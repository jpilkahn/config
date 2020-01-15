#!/usr/bin/env sh


# alias.sh
# ======
#
# Defines useful aliases.


# --------------------------------- in-built ----------------------------------

alias _ls="ls"
alias ls="ls --tabsize=\${PIL_TABSIZE:-4}"
alias ll="ls -alF"
alias la="ls -AlBFh"
alias l="ls -F"

alias _cp="cp"
alias cp="cp -i"  # confirm before overwriting

alias _diff="diff"
alias diff="diff -u"

alias _free="free"
alias free="free -m"  # show sizes in MB

alias more="less"


# ---------------------------------- custom -----------------------------------

alias k="kdevelop"

alias term="terminator"
alias shell="term"
alias term-proj="term -l proj"
alias term-work="term -l work"
