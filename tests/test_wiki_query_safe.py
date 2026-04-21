from pathlib import Path

import pytest

from scripts.wiki_query_safe import (
    RepoStateError,
    build_query_env,
    infer_actions,
    is_local_codex_bridge,
)


def make_repo(
    tmp_path: Path,
    *,
    with_index: bool = False,
    with_source: bool = False,
    with_state: bool = False,
) -> Path:
    (tmp_path / "sources").mkdir()
    (tmp_path / "wiki").mkdir()
    if with_index:
        (tmp_path / "wiki" / "index.md").write_text("# Knowledge Wiki\n")
    if with_source:
        (tmp_path / "sources" / "note.md").write_text("hello\n")
    if with_state:
        (tmp_path / ".llmwiki").mkdir()
        (tmp_path / ".llmwiki" / "state.json").write_text("{}\n")
    return tmp_path


def test_is_local_codex_bridge_detects_local_bridge_url() -> None:
    assert is_local_codex_bridge("http://127.0.0.1:4000/v1") is True
    assert is_local_codex_bridge("http://localhost:4000/v1") is True
    assert is_local_codex_bridge("https://api.openai.com/v1") is False


def test_infer_actions_for_local_bridge_without_index_compiles_and_hardens(tmp_path: Path) -> None:
    repo = make_repo(tmp_path, with_index=False, with_source=True, with_state=True)
    actions = infer_actions(repo, {"OPENAI_BASE_URL": "http://127.0.0.1:4000/v1"})
    assert actions == ["apply_patch", "check_bridge_health", "reset_state", "compile"]


def test_infer_actions_for_non_bridge_without_index_only_compiles(tmp_path: Path) -> None:
    repo = make_repo(tmp_path, with_index=False, with_source=True)
    actions = infer_actions(repo, {"OPENAI_BASE_URL": "https://api.openai.com/v1"})
    assert actions == ["compile"]


def test_infer_actions_raises_when_repo_has_no_index_and_no_sources(tmp_path: Path) -> None:
    repo = make_repo(tmp_path, with_index=False, with_source=False)
    with pytest.raises(RepoStateError):
        infer_actions(repo, {"OPENAI_BASE_URL": "http://127.0.0.1:4000/v1"})


def test_build_query_env_forces_non_streaming_for_local_bridge() -> None:
    env = build_query_env({"OPENAI_BASE_URL": "http://127.0.0.1:4000/v1"})
    assert env["LLMWIKI_FORCE_NON_STREAMING"] == "1"


def test_build_query_env_overrides_bad_streaming_value_for_local_bridge() -> None:
    env = build_query_env(
        {
            "OPENAI_BASE_URL": "http://127.0.0.1:4000/v1",
            "LLMWIKI_FORCE_NON_STREAMING": "0",
        }
    )
    assert env["LLMWIKI_FORCE_NON_STREAMING"] == "1"


def test_build_query_env_preserves_non_bridge_defaults() -> None:
    env = build_query_env({"OPENAI_BASE_URL": "https://api.openai.com/v1"})
    assert env.get("LLMWIKI_FORCE_NON_STREAMING") != "1"
