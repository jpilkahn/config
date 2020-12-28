#!/usr/bin/env sh

# alias.sh
# ======
#
# Defines useful aliases.

# shellcheck source=./sh/.sh/alias/alias-arch.sh
# shellcheck source=./sh/.sh/alias/alias-custom.sh
# shellcheck source=./sh/.sh/alias/alias-posix.sh
# shellcheck source=./sh/.sh/alias/alias-ripgrep.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
	$HOME/.sh/alias/alias-arch.sh
	$HOME/.sh/alias/alias-custom.sh
	$HOME/.sh/alias/alias-posix.sh
	$HOME/.sh/alias/alias-ripgrep.sh
EOF
