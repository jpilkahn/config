#!/usr/bin/env sh

__rust_log() {
    _level="${1:-RUST_LOG_LEVEL}"
    _level="${_level:-"INFO"}"
    _module_levels="${RUST_LOG_MODULE_LEVELS}${RUST_LOG_MODULE_LEVELS:+","}$2"

    printf '%s\n' "$_level,$_module_levels"
}

alias cargo="RUST_LOG=__rust_log cargo"

alias cargo-test="TEST_LOG=1 cargo test"

alias c="cargo"
alias ct="cargo-test"
