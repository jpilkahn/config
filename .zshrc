# source prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# history
setopt histignorealldups
setopt noincappendhistory
setopt nosharehistory
unsetopt EXTENDED_HISTORY
HISTSIZE=999999
SAVEHIST=999999
HISTFILE=~/.bash_history

# source common config for zsh and bash
[[ -e ~/.all_shells_common_profile ]] && emulate sh -c 'source ~/.all_shells_common_profile'

