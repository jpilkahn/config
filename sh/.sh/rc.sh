#!/usr/bin/env sh

# rc.sh
# =====

# shellcheck source=./sh/.sh/env/custom.sh
# shellcheck source=./sh/.sh/env/editor.sh
# shellcheck source=./sh/.sh/env/path.sh
# shellcheck source=./sh/.sh/init/dircolors.sh
# shellcheck source=./sh/.sh/init/ssh-agent.sh
# shellcheck source=./sh/.sh/lib/archive-extractor.sh
# shellcheck source=./sh/.sh/alias/alias.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
	$HOME/.sh/env/custom.sh
	$HOME/.sh/env/editor.sh
	$HOME/.sh/env/locale.sh
	$HOME/.sh/env/path.sh
	$HOME/.sh/init/dircolors.sh
	$HOME/.sh/init/ssh-agent.sh
	$HOME/.sh/lib/archive-extractor.sh
	$HOME/.sh/alias/alias.sh
EOF
