#!/usr/bin/env sh

alias pacman="pacman \$PIL_COLOR_FLAG"
alias p="pacman"

alias pc="paccache"
alias pcr="pc -r"
alias pcr1="pc -rk1"
alias pcr2="pc -rk2"
alias pcr3="pc -rk3"
alias pcsc="pacman -Sc"

alias pi="sudo pacman -S"

alias pq="pacman -Q"
alias pqi="pacman -Qi"

alias pqorphans="pacman -Qdt"
alias pqo="porphans"

alias premove="sudo pacman -Rcns"
alias prm="premove"

alias psi="pacman -Si"
alias pss="pacman -Ss"

alias psync="pacman -Syuw"

alias pupgrade="sudo pacman -Syu"
alias pu="pupgrade"
