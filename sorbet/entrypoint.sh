#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

fix() {
	srb tc -a
}

lint() {
	srb tc
}

_lint_and_fix_action srb tc "${@}"
