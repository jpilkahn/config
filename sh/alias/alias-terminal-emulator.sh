#!/usr/bin/env sh

alias shell="konsole"
alias term="terminator"

__ywsat() {
    _scope="$1"
    _name="$2"
    _cmd="$3"

    yarn workspace "@$_scope/$_name" "$_cmd"
}

alias y="yarn"
alias ycl="yarn clean"
alias yi="yarn install"
alias ycli="yarn clean:install"
alias yup="yarn up"
alias yupi="yarn upgrade-interactive"
alias yws="yarn workspace"
alias ywhy="yarn why"
alias ywsl="yarn workspaces list"
alias ywslj="yarn workspaces list --json"
alias yws@=__ywsat
alias yws@g="yws@= goldeimer"
alias yy="yarn why"
