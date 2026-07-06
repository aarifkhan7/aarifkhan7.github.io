#!/usr/bin/env bash
# Regenerate resume.pdf whenever resume.md is part of the commit.
# Installed as .git/hooks/pre-commit (see scripts/install-hooks.sh).
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

if git diff --cached --name-only | grep -qx 'resume.md'; then
  echo "resume.md changed — regenerating resume.pdf..."
  ./scripts/build-resume-pdf.sh
  git add resume.pdf Aarif_Khan_Resume.pdf
fi
