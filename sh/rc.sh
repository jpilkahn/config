#!/usr/bin/env sh

# common base rcfile for any POSIX-compliant shell

# shellcheck source=./sh/env/env.sh
# shellcheck source=./sh/init/dircolors.sh
# shellcheck source=./sh/init/ssh-agent.sh
# shellcheck source=./sh/lib/archive-extractor.sh
# shellcheck source=./sh/alias/alias.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
	$HOME/.sh/env/env.sh
	$HOME/.sh/init/dircolors.sh
	$HOME/.sh/init/ssh-agent.sh
	$HOME/.sh/lib/archive-extractor.sh
	$HOME/.sh/alias/alias.sh
EOF
