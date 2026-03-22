# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="aussiegeek"
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=50000
bindkey -e

# PLugins
plugins=(git)

# Load up oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias e=nvim
alias ef='nvim $(fzf)'
alias c99=gcc
alias cnew='curl -fLo build.sh https://raw.githubusercontent.com/zakarouf/template-c/master/build.sh'
alias ow='$* $(fzf)'

# Path
export PATH="$HOME/bin:$HOME/.local/usr/bin:$PATH"

# Note Taking
NOTES_PATH="$HOME/notes.md"
alias n='echo -e "# $(date) \n" "$(vipe --suffix md)" >> $NOTES_PATH'
alias n1='echo -e "# $(date) \n" "$1" >> $NOTES_PATH'
alias notes='nvim -M "+ normal G" $NOTES_PATH'

# Terminal Improvement
alias v="kitty +kitten icat $*"

#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init - zsh)"
