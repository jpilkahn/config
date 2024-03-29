[ -f "$HOME/.zshenv" ] && . "$HOME/.zshenv"

# ------------------------------------ cd --------------------------------------

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_SILENT
setopt PUSHD_IGNORE_DUPS

# -------------------------------- completion ----------------------------------

setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH

# --------------------------------- globbing -----------------------------------

unsetopt CASE_GLOB
setopt CORRECT_ALL
setopt MARK_DIRS
setopt NUMERIC_GLOB_SORT

# ---------------------------------- history -----------------------------------

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
unsetopt INC_APPEND_HISTORY
setopt HIST_LEX_WORDS
setopt HIST_VERIFY
setopt SHARE_HISTORY

# max values: `LONG_MAX` (`limits.h`), `9223372036854775807`
# @see http://www.zsh.org/mla/users/2013/msg00691.html
HISTSIZE=999999
export HISTSIZE
SAVEHIST=999999
export SAVEHIST
HISTFILE=${ZDOTDIR:-"$HOME"}/.zsh_history
export HISTFILE

# ------------------------------------ i/o -------------------------------------

unsetopt CLOBBER
setopt INTERACTIVE_COMMENTS
setopt PATH_DIRS
setopt PATH_SCRIPT

# --------------------------------- nocorrect ----------------------------------

# coreutils
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'

# other executables
alias cargo='nocorrect cargo'

# ------------------------------ shell emulation -------------------------------

setopt APPEND_CREATE
setopt BSD_ECHO

# ------------------------------------ zle -------------------------------------

setopt NO_BEEP

#shellcheck source=/dev/null
. "$ZPREZTODIR/init.zsh"

# ----------------------------- auto completion --------------------------------

_gitExtrasZshCompletion="/usr/share/doc/git-extras/git-extras-completion.zsh"

#shellcheck source="/usr/share/doc/git-extras/git-extras-completion.zsh"
[[ -r "$_gitExtrasZshCompletion" ]] && . "$_gitExtrasZshCompletion"

fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

# ---------------------------------- common ------------------------------------

#shellcheck source="rc.sh"
_rc="$HOME/.sh/rc.sh" && [[ -r "$_rc" ]] && . "$_rc"

eval "$(zellij setup --generate-auto-start zsh)"
