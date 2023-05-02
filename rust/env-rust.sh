#!/usr/bin/env sh

_cargoBinDir="$HOME/.cargo/bin"

PATH="$_cargoBinDir:$PATH"
export PATH

RUSTUP_TOOLCHAIN="stable"
export RUSTUP_TOOLCHAIN
