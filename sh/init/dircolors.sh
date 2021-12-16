#!/usr/bin/env sh

# Initialize `dircolors`

# @see alias.sh
PIL_COLOR_FLAG=

if command -v dircolors >/dev/null 2>&1 ; then
    {
        [ -r ~/.dircolors ] && eval "$(dircolors -b ~/.dir_colors)"
    } \
    || eval "$(dircolors -b)"

    PIL_COLOR_FLAG="--color=auto" ; export PIL_COLOR_FLAG
fi
