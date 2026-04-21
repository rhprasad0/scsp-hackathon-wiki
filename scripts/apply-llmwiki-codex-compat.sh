#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "$0")/.." && pwd)"
target="$root_dir/node_modules/llm-wiki-compiler/dist/cli.js"

if [ ! -f "$target" ]; then
  echo "llmwiki compat patch skipped: $target not found"
  exit 0
fi

python3 - <<'PY' "$target"
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text()
changed = False

needle_stream = '    stream: Boolean(onToken),'
replacement_stream = '    stream: process.env.LLMWIKI_FORCE_NON_STREAMING == "1" ? false : Boolean(onToken),'
if replacement_stream in text:
    print('llmwiki compat patch: streaming override already applied')
elif needle_stream in text:
    text = text.replace(needle_stream, replacement_stream, 1)
    changed = True
    print('llmwiki compat patch: applied streaming override')
else:
    print('llmwiki compat patch failed: streaming snippet not found', file=sys.stderr)
    raise SystemExit(1)

needle_print = '  process.stdout.write("\\n");\n  if (!result.answer) {'
replacement_print = '  if (process.env.LLMWIKI_FORCE_NON_STREAMING == "1" && result.answer) {\n    process.stdout.write(result.answer + "\\n");\n  } else {\n    process.stdout.write("\\n");\n  }\n  if (!result.answer) {'
if replacement_print in text:
    print('llmwiki compat patch: non-stream print already applied')
elif needle_print in text:
    text = text.replace(needle_print, replacement_print, 1)
    changed = True
    print('llmwiki compat patch: applied non-stream print fallback')
else:
    print('llmwiki compat patch failed: print snippet not found', file=sys.stderr)
    raise SystemExit(1)

if changed:
    path.write_text(text)
    print('llmwiki compat patch complete')
else:
    print('llmwiki compat patch already applied')
PY
