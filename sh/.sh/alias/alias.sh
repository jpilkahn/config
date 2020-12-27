#!/usr/bin/env sh

# alias.sh
# ======
#
# Defines useful aliases.

# ----------------------------------- posix ------------------------------------

alias _ls="ls"
alias ls="ls -T\${PIL_TABSIZE:-4} \$PIL_COLOR_FLAG"
alias la="ls -alF"
alias ll="ls -AlBFh"
alias l="ls -F"

# confirm before overwriting
alias _cp="cp"
alias _mv="mv"
alias _rm="rm"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias _diff="diff"
alias diff="diff -u"

alias _free="free"
alias free="free -m"

alias more="less"

alias grep="grep \$PIL_COLOR_FLAG"
alias egrep="egrep \$PIL_COLOR_FLAG"
alias fgrep="fgrep \$PIL_COLOR_FLAG"

alias dmesg="fgrep \$PIL_COLOR_FLAG"

# ----------------------------------- arch ------------------------------------

alias pacman="pacman \$PIL_COLOR_FLAG"

# ---------------------------------- custom -----------------------------------

alias c="code"
alias k="kdevelop"

alias shell="konsole"
alias term="terminator"
alias term-proj="term -l proj"
alias term-work="term -l work"
