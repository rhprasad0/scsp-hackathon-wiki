#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "$0")/.." && pwd)"
bridge_env_source="/home/ryan/hermes-agent/infra/honcho/.env"
out_file="$root_dir/.env"

if [ ! -f "$bridge_env_source" ]; then
  echo "Missing local bridge env: $bridge_env_source" >&2
  exit 1
fi

set -a
# shellcheck disable=SC1091
source "$bridge_env_source"
set +a

if [ -z "${CODEX_BRIDGE_API_KEY:-}" ]; then
  echo "CODEX_BRIDGE_API_KEY not found in $bridge_env_source" >&2
  exit 1
fi

cat > "$out_file" <<EOF
LLMWIKI_PROVIDER=openai
OPENAI_API_KEY=${CODEX_BRIDGE_API_KEY}
OPENAI_BASE_URL=http://127.0.0.1:4000/v1
LLMWIKI_MODEL=gpt-5.4-mini
LLMWIKI_FORCE_NON_STREAMING=1
EOF

chmod 600 "$out_file"
echo "Wrote $out_file using local codex-bridge credentials."
echo "Provider: openai"
echo "Base URL: http://127.0.0.1:4000/v1"
echo "Model: gpt-5.4-mini"
