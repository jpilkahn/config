# ------------------------------------ cd -------------------------------------

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_SILENT
setopt PUSHD_IGNORE_DUPS

# -------------------------------- completion ---------------------------------

setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH

# --------------------------------- globbing ----------------------------------

unsetopt CASE_GLOB
setopt CORRECT_ALL
setopt MARK_DIRS
setopt NUMERIC_GLOB_SORT

# ---------------------------------- history ----------------------------------

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
unsetopt INC_APPEND_HISTORY
setopt HIST_LEX_WORDS
setopt HIST_VERIFY
setopt SHARE_HISTORY

HISTSIZE=999999
SAVEHIST=999999
HISTFILE=${ZDOTDIR:-"$HOME"}/.zsh_history

# ------------------------------------ i/o ------------------------------------

unsetopt CLOBBER
setopt INTERACTIVE_COMMENTS
setopt PATH_DIRS
setopt PATH_SCRIPT

# --------------------------------- nocorrect ---------------------------------

alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias rg --type package='nocorrect rg --type package'

# ------------------------------ shell emulation ------------------------------

setopt APPEND_CREATE
setopt BSD_ECHO

# ------------------------------------ zle ------------------------------------

setopt NO_BEEP

# ---------------------------------- common -----------------------------------

#shellcheck source="rc.sh"
_rc="$HOME/.sh/rc.sh" && [[ -r "$_rc" ]] && . "$_rc"
