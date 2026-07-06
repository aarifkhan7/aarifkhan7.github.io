#!/usr/bin/env bash
# Regenerate resume.pdf from the rendered /resume/ page, so Jekyll/Liquid
# variables (site.author.*, etc.) are resolved before converting to PDF.
# Requires: weasyprint (sudo apt-get install weasyprint)
set -euo pipefail

cd "$(dirname "$0")/.."

bundle exec jekyll build >/dev/null

html=$(mktemp --suffix=.html)
trap 'rm -f "$html"' EXIT

python3 - "$html" <<'EOF'
import re, sys

with open("_site/resume/index.html") as f:
    page = f.read()

match = re.search(r'<article class="page">(.*?)</article>', page, re.DOTALL)
content = match.group(1)

with open(sys.argv[1], "w") as f:
    f.write(f"""<!DOCTYPE html>
<html><head><meta charset="utf-8"><title>Aarif Khan — Resume</title></head>
<body>{content}</body></html>""")
EOF

weasyprint "$html" resume.pdf \
  --stylesheet scripts/resume.css \
  --base-url "$(pwd)"

echo "Wrote resume.pdf"
