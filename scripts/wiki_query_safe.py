from __future__ import annotations

import argparse
import os
import subprocess
import sys
import urllib.error
import urllib.request
from pathlib import Path
from typing import Mapping


class RepoStateError(RuntimeError):
    """Raised when the wiki repo is missing required state for a query."""


def is_local_codex_bridge(base_url: str | None) -> bool:
    if not base_url:
        return False
    normalized = base_url.rstrip("/").lower()
    return normalized in {
        "http://127.0.0.1:4000/v1",
        "http://localhost:4000/v1",
    }


def bridge_health_url(base_url: str) -> str:
    return base_url.rsplit("/v1", 1)[0] + "/health"


def has_non_placeholder_sources(root: Path) -> bool:
    sources_dir = root / "sources"
    if not sources_dir.exists():
        return False
    return any(path.is_file() and path.name != ".gitkeep" for path in sources_dir.iterdir())


def has_index(root: Path) -> bool:
    return (root / "wiki" / "index.md").exists()


def has_query_state(root: Path) -> bool:
    state_dir = root / ".llmwiki"
    if not state_dir.exists():
        return False
    return any(path.is_file() for path in state_dir.iterdir())


def infer_actions(root: Path, env: Mapping[str, str]) -> list[str]:
    actions: list[str] = []
    base_url = env.get("OPENAI_BASE_URL")
    if is_local_codex_bridge(base_url):
        actions.extend(["apply_patch", "check_bridge_health"])
    if not has_index(root):
        if has_non_placeholder_sources(root):
            if has_query_state(root):
                actions.append("reset_state")
            actions.append("compile")
        else:
            raise RepoStateError(
                "Wiki index is missing and there are no source files to compile. "
                "Ingest note pairs first."
            )
    return actions


def build_query_env(env: Mapping[str, str]) -> dict[str, str]:
    query_env = dict(env)
    if is_local_codex_bridge(query_env.get("OPENAI_BASE_URL")):
        query_env["LLMWIKI_FORCE_NON_STREAMING"] = "1"
    return query_env


def run_checked(command: list[str], *, cwd: Path, env: Mapping[str, str]) -> None:
    subprocess.run(command, cwd=cwd, env=dict(env), check=True)


def apply_patch(root: Path, env: Mapping[str, str]) -> None:
    print("→ Ensuring llmwiki codex-bridge compatibility patch is applied...", file=sys.stderr)
    run_checked(["bash", "./scripts/apply-llmwiki-codex-compat.sh"], cwd=root, env=env)


def check_bridge_health(env: Mapping[str, str]) -> None:
    base_url = env.get("OPENAI_BASE_URL")
    if not base_url:
        raise RepoStateError("OPENAI_BASE_URL is not configured for codex-bridge health checks.")
    health_url = bridge_health_url(base_url)
    request = urllib.request.Request(health_url)
    try:
        with urllib.request.urlopen(request, timeout=5) as response:
            if response.status != 200:
                raise RepoStateError(f"codex-bridge health check failed: HTTP {response.status}")
    except urllib.error.URLError as exc:
        raise RepoStateError(
            f"codex-bridge is unreachable at {health_url}. Start the local bridge before querying."
        ) from exc
    print(f"→ codex-bridge healthy at {health_url}", file=sys.stderr)


def compile_wiki(root: Path, env: Mapping[str, str]) -> None:
    print("→ wiki/index.md missing; compiling sources first...", file=sys.stderr)
    run_checked(["bash", "./scripts/ingest-and-compile.sh", "--compile-only"], cwd=root, env=env)


def reset_query_state(root: Path) -> None:
    state_dir = root / ".llmwiki"
    if not state_dir.exists():
        return
    removed = 0
    for path in state_dir.iterdir():
        if path.is_file():
            path.unlink()
            removed += 1
    print(f"→ reset .llmwiki state ({removed} file(s) removed) for a full rebuild", file=sys.stderr)


def run_query(root: Path, llmwiki_cmd: str, question: str, *, save: bool, env: Mapping[str, str]) -> int:
    command = [llmwiki_cmd, "query"]
    if save:
        command.append("--save")
    command.append(question)
    result = subprocess.run(command, cwd=root, env=dict(env))
    return result.returncode


def parse_args(argv: list[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Safe llmwiki query wrapper with resilience checks")
    parser.add_argument("--llmwiki-cmd", required=True)
    parser.add_argument("--save", action="store_true")
    parser.add_argument("question", nargs="+")
    return parser.parse_args(argv)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(argv or sys.argv[1:])
    root = Path(__file__).resolve().parent.parent
    question = " ".join(args.question).strip()
    if not question:
        raise RepoStateError("Question must not be empty.")

    env = build_query_env(os.environ)
    actions = infer_actions(root, env)
    for action in actions:
        if action == "apply_patch":
            apply_patch(root, env)
        elif action == "check_bridge_health":
            check_bridge_health(env)
        elif action == "reset_state":
            reset_query_state(root)
        elif action == "compile":
            compile_wiki(root, env)

    return run_query(root, args.llmwiki_cmd, question, save=args.save, env=env)


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except RepoStateError as exc:
        print(f"! {exc}", file=sys.stderr)
        raise SystemExit(1)
