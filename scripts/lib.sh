#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ -f "$root_dir/.env" ]; then
  set -a
  # shellcheck disable=SC1091
  source "$root_dir/.env"
  set +a
fi

if [ -z "${ANTHROPIC_API_KEY:-}" ] && [ -z "${ANTHROPIC_AUTH_TOKEN:-}" ] && [ -f "$HOME/.claude/settings.json" ]; then
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
