#!/usr/bin/env bash

# Move to the repository root (one level up from scripts/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="${SCRIPT_DIR}/.."
cd "${REPO_ROOT}" || exit 1

# Prefer python3 if available
if command -v python3 >/dev/null 2>&1; then
    PY=python3
elif command -v python >/dev/null 2>&1; then
    PY=python
else
    echo "No python executable found (python3 or python). Please install Python." >&2
    exit 127
fi

"${PY}" --version || true

# Create a virtual environment in the repo if it doesn't exist
if [ ! -d "venv" ]; then
    "${PY}" -m venv venv
fi

# Activate the virtual environment for the current shell
if [ -f "venv/bin/activate" ]; then
    # shellcheck disable=SC1091
    source venv/bin/activate
else
    echo "Virtualenv activation script not found." >&2
    exit 1
fi

# Upgrade pip then install the required Python packages if requirements.txt exists
pip install --upgrade pip setuptools wheel
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt not found; skipping pip install." >&2
fi

# Install Ruby gems if Bundler is available and a Gemfile exists
if command -v bundle >/dev/null 2>&1 && [ -f "Gemfile" ]; then
    bundle config set --local path './.bundle'
    bundle install
else
    echo "Bundler not found or Gemfile missing; skipping Ruby bundle step." >&2
fi