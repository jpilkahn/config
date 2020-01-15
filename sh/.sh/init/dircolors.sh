#!/usr/bin/env sh


# dircolors.sh
# ============
#
# Initialize `dircolors`.


if command -v dircolors >/dev/null 2>&1 ; then
    {
        [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dir_colors)"
    } \
    || eval "$(dircolors -b)"

    alias ls="ls --color=auto"

    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias fgrep="fgrep --color=auto"

    alias dmesg="fgrep --color=auto"
    alias pacman="pacman --color=auto"
fi
