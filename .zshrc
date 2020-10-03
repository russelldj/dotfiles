#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/david/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/david/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/david/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/david/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
## <<< conda initialize <<<

alias paraview="/home/david/install/ParaView-5.8.0-MPI-Linux-Python3.7-64bit/bin/paraview"
alias TeleSculptor="/home/david/install/TeleSculptor-1.1.0-Linux-x86_64/bin/TeleSculptor"
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."
alias cnt="ls -1 | wc -l"
alias envs="conda env list"
alias sacred="sudo systemctl start mongod; omniboard -m localhost:27017:sacred &; google-chrome http://localhost:9000"
alias alignment="cd dev/TelesculptorRegistration; conda activate alignment"
alias viame_train_detector_anywhere="/home/david/dev/VIAME/build/install/bin/viame_train_detector"

# Vim keybindings. This may mess some things up
bindkey -v
bindkey "^R" history-incremental-search-backward


