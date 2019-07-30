#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

fix() {
	exit 1
}

lint() {
	brakeman
}

_lint_and_fix_action rubocop "${@}"
