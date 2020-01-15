#!/usr/bin/env sh


# editor.sh
# =========
#
# Environment variable(s) identifying the default text editor(s).

_editor=
_visual=


while read -r _candidate ; do
    _bin="$(command -v "$_candidate")"
    [ -n "$_bin" ] && _editor="$_bin" && break
done <<- EOF
    joe
    nvim
    vim
    vi
    nano
    ed
EOF


while read -r _candidate ; do
    _bin="$(command -v "$_candidate")"
    [ -n "$_bin" ] && _visual="$_bin" && break
done <<- EOF
    kdevelop
    atom
    kate
    gedit
EOF


# cmdline applications
[ -n "$_editor" ] && { EDITOR="$_editor" ; export EDITOR ; }

# shell history
[ -n "$_editor" ] && { FCEDIT="$_editor" ; export FCEDIT ; }

# gui applications
[ -n "$_visual" ] && { VISUAL="$_visual" ; export VISUAL ; }
