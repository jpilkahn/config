#!/usr/bin/env sh


# rc.sh
# =====


# shellcheck source=sh/.sh/env/custom.sh
# shellcheck source=sh/.sh/env/editor.sh
# shellcheck source=sh/.sh/env/path.sh
# shellcheck source=sh/.sh/init/dircolors.sh
# shellcheck source=sh/.sh/init/ssh-agent.sh
# shellcheck source=sh/.sh/lib/archive-extractor.sh
# shellcheck source=sh/.sh/alias/alias.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<-EOF
	.sh/env/custom.sh
	.sh/env/editor.sh
	.sh/env/locale.sh
	.sh/env/path.sh
	.sh/init/dircolors.sh
	.sh/init/ssh-agent.sh
	.sh/lib/archive-extractor.sh
	.sh/alias/alias.sh
EOF
