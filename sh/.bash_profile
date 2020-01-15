#!/usr/bin/env bash


# .bash_profile
# =============


#shellcheck source="bashrc.sh"
_rc="$HOME/bashrc.sh" && [[ -r "$_rc" ]] && . "$_rc"
