#!/usr/bin/env sh

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
alias ywhy="yarn why"
alias yws="yarn workspace"
alias yws@=__ywsat
alias ywsl="yarn workspaces list"
alias ywslj="yarn workspaces list --json"
alias yy="ywhy"
