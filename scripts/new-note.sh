#!/usr/bin/env bash
set -euo pipefail

with_research=0
if [ "${1:-}" = "--with-research" ]; then
  with_research=1
  shift
fi

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
  echo "Usage: $0 [--with-research] <slug> [YYYY-MM-DD]" >&2
  exit 1
fi

slug="$1"
date_value="${2:-$(date +%F)}"
root_dir="$(cd "$(dirname "$0")/.." && pwd)"
curated_path="$root_dir/curated/${date_value}-${slug}.md"
research_path="$root_dir/research/${date_value}-${slug}-public-research.md"

if [ -e "$curated_path" ]; then
  echo "Refusing to overwrite existing curated note file." >&2
  echo "$curated_path" >&2
  exit 1
fi

if [ "$with_research" -eq 1 ] && [ -e "$research_path" ]; then
  echo "Refusing to overwrite existing research note file." >&2
  echo "$research_path" >&2
  exit 1
fi

mkdir -p "$root_dir/curated"
cp "$root_dir/templates/curated-note-template.md" "$curated_path"

if [ "$with_research" -eq 1 ]; then
  mkdir -p "$root_dir/research"
  cp "$root_dir/templates/public-research-supplement-template.md" "$research_path"
fi

python3 - "$curated_path" "$research_path" "$date_value" "$slug" "$with_research" <<'PY'
from pathlib import Path
import sys

curated = Path(sys.argv[1])
research = Path(sys.argv[2])
date_value = sys.argv[3]
slug = sys.argv[4]
with_research = sys.argv[5] == '1'
title = slug.replace('-', ' ').title()

paths = [curated]
if with_research and research.exists():
    paths.append(research)

for path in paths:
    text = path.read_text()
    text = text.replace('__DATE__', date_value)
    text = text.replace('__SLUG__', slug)
    text = text.replace('__TITLE__', title)
    path.write_text(text)
PY

echo "Created:"
echo "  $curated_path"
if [ "$with_research" -eq 1 ]; then
  echo "  $research_path"
fi
