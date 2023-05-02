#!/usr/bin/env sh

__rust_log() {
    _level="${1:-RUST_LOG_LEVEL}"
    _level="${_level:-"INFO"}"
    _module_levels="$RUST_LOG_MODULE_LEVELS${RUST_LOG_MODULE_LEVELS:+","}$2"

    echo "$_level,$_module_levels"
}

alias cargo_test="RUST_LOG=__rust_log TEST_LOG=1 cargo test"

alias c="cargo"
alias ct="cargo_test"
