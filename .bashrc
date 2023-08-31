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
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ( \1)/'
}

PS1="\e[1;93m\u@\h \e[0;36m\w\e[91m\$(git_branch) \e[1;93m>>\e[0m "
