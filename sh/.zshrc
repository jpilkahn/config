# .zshrc
# ======


# ---------------------------------- history ----------------------------------

setopt histignorealldups   # prune duplicates
setopt noincappendhistory  #
setopt nosharehistory      #

HISTSIZE=999999
SAVEHIST=999999
HISTFILE=~/.zsh_history


# ---------------------------------- common -----------------------------------

#shellcheck source=".sh/rc.sh"
_rc="$HOME/.sh/rc.sh" && [ -r "$_rc" ] && . "$_rc"
