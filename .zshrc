# source prezto (enable, if not installed via AUR)
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#     source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# powerline (enable, if not using a zsh prompt including it)
# powerline-daemon -q
# . /usr/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

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
