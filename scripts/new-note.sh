#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <slug> [YYYY-MM-DD]" >&2
  exit 1
fi

slug="$1"
date_value="${2:-$(date +%F)}"
root_dir="$(cd "$(dirname "$0")/.." && pwd)"
curated_path="$root_dir/curated/${date_value}-${slug}.md"
research_path="$root_dir/research/${date_value}-${slug}-public-research.md"

if [ -e "$curated_path" ] || [ -e "$research_path" ]; then
  echo "Refusing to overwrite existing note files." >&2
  echo "$curated_path" >&2
  echo "$research_path" >&2
  exit 1
fi

mkdir -p "$root_dir/curated" "$root_dir/research"
cp "$root_dir/templates/curated-note-template.md" "$curated_path"
cp "$root_dir/templates/public-research-supplement-template.md" "$research_path"

python3 - "$curated_path" "$research_path" "$date_value" "$slug" <<'PY'
from pathlib import Path
import sys

curated = Path(sys.argv[1])
research = Path(sys.argv[2])
date_value = sys.argv[3]
slug = sys.argv[4]
title = slug.replace('-', ' ').title()

for path in [curated, research]:
    text = path.read_text()
    text = text.replace('__DATE__', date_value)
    text = text.replace('__SLUG__', slug)
    text = text.replace('__TITLE__', title)
    path.write_text(text)
PY

echo "Created:"
echo "  $curated_path"
echo "  $research_path"
