#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -f "$root_dir/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  source "$root_dir/.env"
  set +a
fi

if [ -z "${OPENAI_API_KEY:-}" ] && [ -f "/home/ryan/hermes-agent/infra/honcho/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  source /home/ryan/hermes-agent/infra/honcho/.env
  set +a
  if [ -n "${CODEX_BRIDGE_API_KEY:-}" ] && [ -z "${OPENAI_BASE_URL:-}" ]; then
    export OPENAI_API_KEY="$CODEX_BRIDGE_API_KEY"
    export OPENAI_BASE_URL="http://127.0.0.1:4000/v1"
    : "${LLMWIKI_PROVIDER:=openai}"
    export LLMWIKI_PROVIDER
    : "${LLMWIKI_MODEL:=gpt-5.4-mini}"
    export LLMWIKI_MODEL
  fi
fi

if [ -z "${ANTHROPIC_API_KEY:-}" ] && [ -z "${ANTHROPIC_AUTH_TOKEN:-}" ] && [ -z "${OPENAI_API_KEY:-}" ] && [ -f "$HOME/.claude/settings.json" ]; then
  eval "$(python3 - <<'PY'
import json
from pathlib import Path
p = Path.home() / '.claude/settings.json'
try:
    data = json.loads(p.read_text())
except Exception:
    data = {}
env = data.get('env', {}) if isinstance(data, dict) else {}
for key in ['ANTHROPIC_API_KEY', 'ANTHROPIC_AUTH_TOKEN', 'ANTHROPIC_BASE_URL', 'OPENAI_API_KEY', 'OPENAI_BASE_URL']:
    value = env.get(key)
    if value:
        escaped = value.replace('\\', '\\\\').replace('"', '\\"').replace('$', '\\$').replace('`', '\\`')
        print(f'export {key}="{escaped}"')
PY
)"
fi

if [ -x "$root_dir/node_modules/.bin/llmwiki" ]; then
  llmwiki_cmd="$root_dir/node_modules/.bin/llmwiki"
else
  llmwiki_cmd="llmwiki"
fi
