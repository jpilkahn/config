#!/usr/bin/env bash


# .bashrc
# =======


# If non-interactive, stop processing.
[[ $- != *i* ]] && return


if [[ -r /usr/share/bash-completion/bash_completion ]] ; then
    . /usr/share/bash-completion/bash_completion
fi

# Limit automcompletion of the word `sudo`.
complete -cf sudo


# ------------------------------- bash options --------------------------------

shopt -s expand_aliases

shopt -s histappend

# Fix for SIGWINCH bug on regaining foreground control, might be outdated.
shopt -s checkwinsize


# --------------------------------- include -----------------------------------

#shellcheck source=".sh/rc.sh"
_rc="$HOME/.sh/rc.sh" && [[ -r "$_rc" ]] && . "$_rc"
