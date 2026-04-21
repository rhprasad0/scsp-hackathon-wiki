#!/usr/bin/env bash
set -euo pipefail

# shellcheck disable=SC1091
source "$(cd "$(dirname "$0")" && pwd)/lib.sh"
cd "$root_dir"

mode="ingest-and-compile"
if [ $# -gt 0 ]; then
  case "$1" in
    --ingest-only)
      mode="ingest-only"
      shift
      ;;
    --compile-only)
      mode="compile-only"
      shift
      ;;
  esac
fi

if [ "$mode" = "compile-only" ]; then
  "$llmwiki_cmd" compile
  exit 0
fi

if [ $# -lt 1 ]; then
  echo "Usage: $0 [--ingest-only|--compile-only] <file> [file ...]" >&2
  exit 1
fi

for source_path in "$@"; do
  if [ ! -f "$source_path" ]; then
    echo "Missing file: $source_path" >&2
    exit 1
  fi
  "$llmwiki_cmd" ingest "$source_path"
done

if [ "$mode" = "ingest-and-compile" ]; then
  "$llmwiki_cmd" compile
fi
