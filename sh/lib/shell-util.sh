#!/usr/bin/env sh

__shell() {
    readlink /proc/$$/exe
}
__fn_alias "shell"

__shell_name() {
    __pop "$(__shell)" "/"
}
__fn_alias "shell_name"

__is_shell() {
    _expected="$1"

    if [ -f "$_expected" ]; then
        [ "$(__shell)" = "$_expected" ]
    else
        [ "$(__shell_name)" = "$_expected" ]
    fi
}
__fn_alias "is_shell"

__is_bash() {
    __is_shell bash
}
__fn_alias "is_bash"

__is_sh() {
    __is_shell sh
}
__fn_alias "is_sh"

__is_zsh() {
    __is_shell zsh
}
__fn_alias "is_zsh"
