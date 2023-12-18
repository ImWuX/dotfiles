# Dont Save Session History
unset HISTFILE

# bun
export PATH=$PATH:$HOME/.bun/bin

# node
export NODE_REPL_HISTORY=".cache/node_repl_history"

# go
export GOROOT=/usr/lib/go
export GOPATH=$HOME/.cache/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# python
export PYTHONSTARTUP=~/.config/python/pythonrc

# git
export GIT_CONFIG_GLOBAL=~/.config/git/config

# wget
export WGETRC=~/.config/wgetrc

# npm
export npm_config_cache=~/.cache/npm

# wakatime
export WAKATIME_HOME=~/.config/wakatime

# xinit
export XINITRC=~/.config/xinit/config


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Define aliases to enable colored commands
alias ls="ls --color=auto"
alias grep="grep --color=auto"

# Define shortcut aliases
alias c="clear"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

# PS1
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\[\e[93;1m\]\u@\h\[\e[0m\] \[\e[36m\]\w\[\e[91m\]$(git_branch)\[\e[93;1m\] >> \[\e[0m\]'

# Set line cursor to blinking bar
echo -en '\e[5 q'

# Set default editor
EDITOR=nvim
