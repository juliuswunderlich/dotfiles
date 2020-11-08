
export TERM="xterm-256color"

source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

#POWERLEVEL9K_MODE='nerdfont-complete'

ZSH_THEME="avit"


if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

export GOPATH=$HOME/Projects/go

alias ls='ls -G'


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
