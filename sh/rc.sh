#!/usr/bin/env sh

# common base rcfile for any POSIX-compliant shell

_sh_dir="$HOME/.sh"

_alias_dir="$_sh_dir/alias"
_env_dir="$_sh_dir/env"
_init_dir="$_sh_dir/init"
_lib_dir="$_sh_dir/lib"

# shellcheck source=./sh/env/env.sh
# shellcheck source=./sh/init/dircolors.sh
# shellcheck source=./sh/init/ssh-agent.sh
# shellcheck source=./sh/lib/alias-util.sh
# shellcheck source=./sh/lib/archive-extractor.sh
# shellcheck source=./sh/lib/conditional-exec.sh
# shellcheck source=./sh/lib/export-esp.sh
# shellcheck source=./sh/lib/shell-util.sh
# shellcheck source=./sh/lib/string-util.sh
# shellcheck source=./sh/alias/alias.sh
# shellcheck source=./sh/injected.sh
while read -r _include; do
    [ -r "$_include" ] && . "$_include"
done <<-EOF
    $_env_dir/env.sh
    $_init_dir/dircolors.sh
    $_init_dir/ssh-agent.sh
    $_lib_dir/alias-util.sh
    $_lib_dir/archive-extractor.sh
    $_lib_dir/conditional-exec.sh
    $_lib_dir/export-esp.sh
    $_lib_dir/shell-util.sh
    $_lib_dir/string-util.sh
    $_alias_dir/alias.sh
    $_sh_dir/injected.sh
EOF
