#!/usr/bin/env sh

# ssh-agent.sh
# ============
#
# Initialize `ssh-agent`.

_pidDir=/tmp/pid ; mkdir -p "$_pidDir"

_cmd=ssh-agent

_envFile="$_pidDir/$_cmd.env"

# @param  $1 pid
# @tparam $1 int
# @param  $2 cmd
# @tparam $2 callable
__isPidValidForCommand ()
{
    # First line is the envput's table header, two lines are expected.
    # (Sidenote: GNU bash offers the (posix-non-compliant) `--no-headers`
    # option, but that's not portable, obviously.)
    # TODO: Avoid the loop, evaluate line 2.
    for _line in $(ps -o ucomm -p "$1" 2>/dev/null) ; do
        [ "$_line" = "$2" ] && return 0
    done
    return 1
}

__exportEnv ()
{
    [ -r "$_envFile" ] || return 66
    eval "$(cat "$_envFile")" >/dev/null 2>/dev/null
    return $?
}

__startAgent ()
{
    rm -f "$_envFile"
    ssh-agent -s >"$_envFile" 2>/dev/null || return 70
    __exportEnv
    return $?
}

[ -r "$_envFile" ] && __exportEnv

__isPidValidForCommand "$SSH_AGENT_PID" "$_cmd" || __startAgent
