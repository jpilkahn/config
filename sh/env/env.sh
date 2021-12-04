#!/usr/bin/env sh


# shellcheck source=sh/env/env-editor.sh
# shellcheck source=sh/env/env-path.sh
# shellcheck source=sh/env/env-shell.sh
# shellcheck source=sh/env/env-editor.sh
# shellcheck source=../../esp-idf/env-esp.sh
while read -r _include ; do
    [ -r "$_include" ] && . "$_include"
done <<- EOF
    $HOME/.sh/env/env-editor.sh
    $HOME/.sh/env/env-esp.sh
    $HOME/.sh/env/env-locale.sh
    $HOME/.sh/env/env-path.sh
    $HOME/.sh/env/env-shell.sh
EOF
