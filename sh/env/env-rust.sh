#!/usr/bin/env sh

# cargo installed binaries
_cargoBinDir="$HOME/.cargo/bin"

PATH="$_cargoBinDir:$PATH" ; export PATH

RUSTUP_TOOLCHAIN="stable" ; export RUSTUP_TOOLCHAIN
