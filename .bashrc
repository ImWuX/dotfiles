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
alias ll="ls -la"

PS1="[\u@\h \w]\$ "
