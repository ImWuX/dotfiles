#!/bin/bash
DOTFILES=$(pwd -P)

dolink() {
    mkdir -p $2
    rm -rf $2/${3:-$1}
    ln -s $DOTFILES/$1 $2/${3:-$1}
}

dolink .bashrc ~
dolink .bash_profile ~
dolink nvim ~/.config
dolink .wakatime.cfg ~/.config/wakatime
dolink pythonrc ~/.config/python
dolink git-config ~/.config/git config
dolink wgetrc ~/.config