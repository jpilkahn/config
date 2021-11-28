#!/usr/bin/env sh

alias __diff="\diff --tabsize \${PIL_TABSIZE:-4}"

alias diffu="__diff -u -wZ"
alias diff="diffu -wZ"

alias diffc="__diff -c"
alias diff-detailed="diffc"

alias diffy="diff -y"
alias diff-by-side="diffy"
