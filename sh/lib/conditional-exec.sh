#!/usr/bin/env sh

__sanitize() {
    echo "$1" | sed 's|"||g'
}
__fn_alias "sanitize"

__exec() {
    sh -c "$(__sanitize "$1")"
}
__fn_alias "exec"

__if() {
    _condition="$1"
    shift

    if
        __exec "$_condition"
    then
        while [ "$#" != "0" ]; do
            __exec "$1"
            shift
        done
    fi
}

__if_command_exists() {
    _cmd="$1"

    __on "command -v $_cmd >/dev/null 2>&1" "$*"
}
__fn_alias "if_command_exists"

__if_shell_is() {
    _shell="$1"

    __on "$([ -f "$_shell" ] && __is_shell "$_shell")" "$*"
}
__fn_alias "if_shell_is"
