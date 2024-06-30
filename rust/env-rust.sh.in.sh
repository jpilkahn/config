#!/usr/bin/env sh

# ------ locals ----------------------------------------------------------------

_default_toolchain="stable"

__default_export() {
    _var="$1"
    _default="$2"

    printf '%s="${%s:-%s}"\n' \
        "${_var}" \
        "${_var}" \
        "${_default}"
}

__default_export RUSTUP_TOOLCHAIN "${_default_toolchain}"

__default_export RUST_USER_CONFIG_DIR '"${HOME}"'

# ------ config ----------------------------------------------------------------

RUSTUP_TOOLCHAIN="${RUSTUP_TOOLCHAIN:-}"
export RUSTUP_TOOLCHAIN

# ------ paths -----------------------------------------------------------------

RUST_USER_CONFIG_DIR="${RUST_USER_CONFIG_DIR:-"${HOME}"}"
export RUST_USER_CONFIG_DIR

CARGO_DIR="${CARGO_DIR:-"${RUST_USER_CONFIG_DIR}/.cargo"}"
export CARGO_DIR

CARGO_BIN_DIR="${CARGO_BIN_DIR:-"${CARGO_DIR}/bin"}"
export CARGO_BIN_DIR

RUSTUP_DIR="${RUSTUP_DIR:-"${RUST_USER_CONFIG_DIR}/.rustup"}"
export RUSTUP_DIR

RUSTUP_TOOLCHAINS_DIR="${RUSTUP_TOOLCHAINS_DIR:-"${RUSTUP_DIR}/toolchains"}"
export RUSTUP_TOOLCHAINS_DIR

# ------ clean up --------------------------------------------------------------

unset -v _default_toolchain
