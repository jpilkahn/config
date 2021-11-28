#!/usr/bin/env sh

# rc.sh
# =====

# shellcheck source=./sh/env/env-editor.sh
# shellcheck source=./sh/env/env-locale.sh
# shellcheck source=./sh/env/env-path.sh
# shellcheck source=./sh/env/env-shell.sh
# shellcheck source=./sh/init/dircolors.sh
# shellcheck source=./sh/init/ssh-agent.sh
# shellcheck source=./sh/lib/archive-extractor.sh
# shellcheck source=./sh/alias/alias.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
	$HOME/.sh/env/env-editor.sh
	$HOME/.sh/env/env-locale.sh
	$HOME/.sh/env/env-path.sh
	$HOME/.sh/env/env-shell.sh
	$HOME/.sh/init/dircolors.sh
	$HOME/.sh/init/ssh-agent.sh
	$HOME/.sh/lib/archive-extractor.sh
	$HOME/.sh/alias/alias.sh
EOF
