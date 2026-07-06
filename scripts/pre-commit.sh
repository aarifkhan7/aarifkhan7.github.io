#!/usr/bin/env bash
# Regenerate assets/resume.pdf whenever resume.md is part of the commit.
# Installed as .git/hooks/pre-commit (see scripts/install-hooks.sh).
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

if git diff --cached --name-only | grep -qx 'resume.md'; then
  echo "resume.md changed — regenerating assets/resume.pdf..."
  ./scripts/build-resume-pdf.sh
  git add assets/resume.pdf
fi
