#!/usr/bin/env sh

# shellcheck source=./sh/alias/alias-filesystem.sh
# shellcheck source=./sh/alias/alias-posix-misc.sh
# shellcheck source=./sh/alias/alias-terminal-emulator.sh
# shellcheck source=./diff/alias-diff.sh
# shellcheck source=./git/alias-git.sh
# shellcheck source=./grep/alias-grep.sh
# shellcheck source=./pacman/alias-pacman.sh
# shellcheck source=./rg/alias-rg.sh
# shellcheck source=./svn/alias-svn.sh
# shellcheck source=./vscode/alias-vscode.sh
# shellcheck source=./yarn/alias-yarn.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
	$HOME/.sh/alias/alias-diff.sh
	$HOME/.sh/alias/alias-filesystem.sh
	$HOME/.sh/alias/alias-git.sh
	$HOME/.sh/alias/alias-grep.sh
	$HOME/.sh/alias/alias-pacman.sh
	$HOME/.sh/alias/alias-posix-misc.sh
	$HOME/.sh/alias/alias-rg.sh
	$HOME/.sh/alias/alias-rg.sh
	$HOME/.sh/alias/alias-svn.sh
	$HOME/.sh/alias/alias-terminal-emulator.sh
	$HOME/.sh/alias/alias-vscode.sh
	$HOME/.sh/alias/alias-yarn.sh
EOF
