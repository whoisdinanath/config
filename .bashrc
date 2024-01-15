#
# ~/.bashrc
#

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export PATH="$HOME/.local/bin:$HOME/.config/scripts/bash:$HOME/.config/scripts/:$PATH"

#### case insensitive tab completion ####
bind "set completion-ignore-case on"

#### append to the history file, don't overwrite it ####
shopt -s histappend

## aliases ##
alias clear='clear'

#### source to scripts ####
source ~/.config/scripts/bash/aliases.sh


eval "$(starship init bash)"


# <<< conda initialize <<<


