#!/usr/bin/env sh

alias ls="ls -T\${PIL_TABSIZE:-4} \$PIL_COLOR_FLAG"
alias la="ls -alF"
alias ll="ls -AlBFh"
alias l="ls -F"

alias __cp="\cp -i"
alias cp="__cp"
alias cpf="\cp -f"
alias cpr="__cp -r"
alias cprf="\cp -rf"

alias mv="\mv -i"

alias __rm="\rm -i"
alias rm="__rm"
alias rmf="\rm -f"
alias rmr="__rm -r"
alias rmrf="\rm -rf"
