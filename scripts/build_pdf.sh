#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
INPUT_MD="$REPO_ROOT/thesis_report.md"
OUTPUT_PDF="$REPO_ROOT/thesis_report.pdf"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not installed. Install pandoc and a LaTeX engine (e.g., xelatex)." >&2
  exit 1
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "Error: xelatex is not installed. Install TeX Live (xelatex)." >&2
  exit 1
fi

if ! pandoc "$INPUT_MD" \
  --from gfm \
  --pdf-engine=xelatex \
  --toc \
  --number-sections \
  -V geometry:margin=1in \
  -o "$OUTPUT_PDF"; then
  echo "Error: pandoc failed to convert $INPUT_MD to PDF." >&2
  exit 1
fi

echo "Generated: $OUTPUT_PDF"
