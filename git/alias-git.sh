#!/usr/bin/env sh

alias g="git"

alias ga="g a"
alias gaa="g aa"
alias gai="g ai"
alias gass="g assume"
alias gassa="g assume-all"
alias gau="g au"
alias gaurbc="__gaurbc"
__gaurbc() {
    g au && g rbc
}

alias gbr="g br"
alias gbrc="g brc"
alias gbrD="g brD"
alias gbrm="g brm"

alias gc="g c"
alias gca="g ca"
alias gcm="g cm"

alias gcl="g cl"

alias gcp="g cp"
alias gcpa="g cpa"
alias gcpc="g cpc"

alias gco="g co"
alias gcob="g cob"
alias gcot="g cot"
alias gcoou="g coou"
alias gcoth="g coth"

alias gd="g d"
alias gdc="g dc"
alias gdcs="g dcs"
alias gds="g ds"

alias gfl="g fl"

alias gg="g s"

alias ggr="g gr"
alias ggrf="g grf"

alias gic="g ic"

alias gl="g l"
alias gll="g ll"

alias gmrg="g mrg"
alias gmrga="g mrga"
alias gmrgc="g mrgc"

alias gmv="g mv"

alias gpl="g pl"
alias gps="g ps"
alias gpsf="g psf"

alias grb="g rb"
alias grba="g rba"
alias grbc="g rbc"
alias grbi="g rbi"
alias grbi5="g rbi5"
alias grbi10="g rbi10"
alias grbm="g rbm"

alias gr="g r"
alias gr1="g r1"
alias gr2="g r2"
alias grh="g rh"
alias grh1="g rh1"
alias grh2="g rh2"
alias grs="g rs"
alias grs1="g rs1"
alias grs2="g rs2"

alias grm="g rm"

alias grp="g rp"
alias grpo="g rpo"

alias grst="g rst"
alias grstg="g rstg"
alias grsto="__grsto"
alias grstt="__grstt"
__grsto() {
    _args="$*"
    g rstg "$_args" && g coou "$_args"
}
__grstt() {
    _args="$*"
    g rstg "$_args" && g coth "$_args"
}

alias gss="g ss"
alias gsh="g sh"
alias gst="g st"
alias gsta="g sta"
alias gsta@="g staat"
alias gstiu="g stiu"
alias gstsh="g stsh"
alias gstsh@="g stshat"
alias gstshu@="g stshuat"

alias guass="g unassume"
alias guassa="g unassume-all"
