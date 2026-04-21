#!/usr/bin/env bash
set -euo pipefail
# shellcheck disable=SC1091
source "$(cd "$(dirname "$0")" && pwd)/lib.sh"
cd "$root_dir"
if [ $# -lt 1 ]; then
  echo "Usage: $0 [--save] <question>" >&2
  exit 1
fi
exec python3 "$root_dir/scripts/wiki_query_safe.py" --llmwiki-cmd "$llmwiki_cmd" "$@"
