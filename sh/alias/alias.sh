#!/usr/bin/env sh

_pwd="$HOME/.sh/alias"

# shellcheck source=./rust/cargo/alias-cargo.sh
# shellcheck source=./sh/alias/alias-coreutils.sh
# shellcheck source=./cron/alias-cron.sh
# shellcheck source=./diff/alias-diff.sh
# shellcheck source=./esp-idf/alias-esp.sh
# shellcheck source=./git/alias-git.sh
# shellcheck source=./grep/alias-grep.sh
# shellcheck source=./k8/alias-k8.sh
# shellcheck source=./pacman/alias-pacman.sh
# shellcheck source=./rg/alias-rg.sh
# shellcheck source=./svn/alias-svn.sh
# shellcheck source=./sh/alias/alias-sys-utils.sh
# shellcheck source=./vscode/alias-vscode.sh
# shellcheck source=./yarn/alias-yarn.sh
# shellcheck source=./zellij/alias-zellij.sh
while read -r _include; do
    [ -r "$_include" ] && . "$_include"
done <<-EOF
    $_pwd/alias-cargo.sh
    $_pwd/alias-coreutils.sh
    $_pwd/alias-cron.sh
    $_pwd/alias-diff.sh
    $_pwd/alias-esp.sh
    $_pwd/alias-git.sh
    $_pwd/alias-grep.sh
    $_pwd/alias-k8.sh
    $_pwd/alias-pacman.sh
    $_pwd/alias-rg.sh
    $_pwd/alias-svn.sh
    $_pwd/alias-sys-utils.sh
    $_pwd/alias-vscode.sh
    $_pwd/alias-yarn.sh
    $_pwd/alias-zellij.sh
EOF
