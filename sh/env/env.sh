#!/usr/bin/env sh

# shellcheck source=rust/cargo/env-cargo.sh
# shellcheck source=sh/env/env-deno.sh
# shellcheck source=sh/env/env-editor.sh
# shellcheck source=esp-idf/env-esp.sh
# shellcheck source=sh/env-locale.sh
# shellcheck source=sh/env/env-path.sh
# shellcheck source=sh/env/env-perl.sh
# shellcheck source=rust/cargo/env-rust.sh
# shellcheck source=sh/env/env-shell.sh
while read -r _include; do
    [ -r "$_include" ] && . "$_include"
done <<-EOF
    $HOME/.sh/env/env-cargo.sh
    $HOME/.sh/env/env-deno.sh
    $HOME/.sh/env/env-editor.sh
    $HOME/.sh/env/env-esp.sh
    $HOME/.sh/env/env-locale.sh
    $HOME/.sh/env/env-path.sh
    $HOME/.sh/env/env-perl.sh
    $HOME/.sh/env/env-rust.sh
    $HOME/.sh/env/env-shell.sh
EOF
