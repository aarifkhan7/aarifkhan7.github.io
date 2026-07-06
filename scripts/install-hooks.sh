#!/usr/bin/env bash
# One-time setup: installs this repo's git hooks (.git/hooks isn't versioned by git).
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"
cp scripts/pre-commit.sh .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
echo "Installed pre-commit hook."
