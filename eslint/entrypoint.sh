#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
	_git_changed_files | xargs npx eslint
}

fix() {
	_git_changed_files | xargs npx eslint --fix
}

_lint_and_fix_action eslint "${@}"
