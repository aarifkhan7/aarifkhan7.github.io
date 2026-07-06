#!/usr/bin/env bash
# Regenerate assets/resume.pdf from resume.md.
# Requires: pandoc, weasyprint (sudo apt-get install pandoc weasyprint)
set -euo pipefail

cd "$(dirname "$0")/.."

body=$(mktemp)
trap 'rm -f "$body"' EXIT

# Strip the Jekyll front matter (everything between the first two --- lines).
awk '/^---$/{c++; next} c>=2' resume.md > "$body"

pandoc "$body" \
  -f markdown -t pdf --pdf-engine=weasyprint \
  --metadata title="Aarif Khan — Resume" \
  --css scripts/resume.css \
  -V margin-top=1in -V margin-bottom=1in -V margin-left=1in -V margin-right=1in \
  -o assets/resume.pdf

echo "Wrote assets/resume.pdf"
