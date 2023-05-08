# # `.zshrc`: zsh run commands
#
# ## shellcheck
#
# [No official `zsh` support](sc_zsh_gh_issue).
# shellcheck shell="bash"
#
# File-relative imports.
# shellcheck source-path=SCRIPTDIR
#
# ## Ref
# [sc_zsh_gh_issue]: https://github.com/koalaman/shellcheck/issues/809

_env="${HOME}/.zshenv"
[[ -r "${_env}" ]] && {
    # shellcheck source=.zshenv
    . "${_env}"
}

# ------------------------------------ cd --------------------------------------

setopt auto_cd
setopt auto_pushd
setopt pushd_silent
setopt pushd_ignore_dups

# -------------------------------- completion ----------------------------------

setopt auto_param_keys
setopt auto_param_slash
setopt auto_remove_slash

# --------------------------------- globbing -----------------------------------

unsetopt case_glob
setopt correct_all
setopt mark_dirs
setopt numeric_glob_sort

# ---------------------------------- history -----------------------------------

setopt append_history
setopt extended_history
setopt hist_ignore_all_dups
unsetopt inc_append_history
setopt hist_lex_words
setopt hist_verify
setopt share_history

# [info] max values
# @see `limits.h`: `LONG_MAX = 9223372036854775807`
# @see http://www.zsh.org/mla/users/2013/msg00691.html
HISTSIZE=999999
export HISTSIZE
SAVEHIST=999999
export SAVEHIST
HISTFILE="${ZDOTDIR:-"${HOME}"}/.zsh_history"
export HISTFILE

# ------------------------------------ i/o -------------------------------------

unsetopt clobber
setopt interactive_comments
setopt path_dirs
setopt path_script

# --------------------------------- nocorrect ----------------------------------

_nocorrect=".zshrc.d/nocorrect.zsh"
[[ -r "${_nocorrect}" ]] && {
    # shellcheck source=.zshrc.d/nocorrect.zsh
    . "${_nocorrect}"
}

# ------------------------------ shell emulation -------------------------------

setopt append_create
setopt bsd_echo

# ------------------------------------ zle -------------------------------------

setopt no_beep

_init="${ZPREZTODIR:-/usr/lib/prezto}/init.zsh"
[[ -r "${_init}" ]] && {
    # sc finds file, but fails to parse (chokes on zsh specifics)
    # shellcheck disable=1094
    # shellcheck source=/usr/lib/prezto/init.zsh
    . "${_init}"
}

# ----------------------------- auto completion --------------------------------

_gitExtrasZshCompletion=/usr/share/doc/git-extras/git-extras-completion.zsh
[[ -r "${_gitExtrasZshCompletion}" ]] && {
    # sc finds file, but fails to parse (chokes on zsh specifics)
    # shellcheck disable=1094
    # shellcheck source=/usr/share/doc/git-extras/git-extras-completion.zsh
    . "${_gitExtrasZshCompletion}"
}

_fpath=(~/.zsh "${_fpath}")
autoload -Uz compinit
compinit -u

# ---------------------------------- common ------------------------------------

_rc="${HOME}/.sh/rc.sh"
[[ -r "${_rc}" ]] && {
    # shellcheck source=rc.sh
    . "${_rc}"
}
