#!/usr/bin/env sh

alias pacman="pacman \$PIL_COLOR_FLAG"
alias p="pacman"

alias pc="paccache"
alias pcr="pc -r"
alias pcr1="pc -rk1"
alias pcr2="pc -rk2"
alias pcr3="pc -rk3"
# alias pcsc="pacman -Sc"

alias pq="pacman -Q"
alias pqi="pacman -Qi"

alias pqowns="pacman -Qo"
alias pqo="pqowns"

alias pqorphans="pacman -Qdt"
alias pqor="pqorphans"

alias premove="pacman -Rcns"
alias prm="premove"
alias spremove="sudo premove"
alias sprm="spreremove"

alias ps="pacman -S"
alias psi="pacman -Si"
alias pss="pacman -Ss"
alias sps="sudo ps"

alias psync="pacman -Syuw"
alias spsync="sudo psync"

alias pupgrade="pacman -Syuu"
alias pup="pupgrade"
alias spupgrade="sudo pupgrade"
alias spup="spupgrade"
