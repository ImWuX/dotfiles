#!/bin/bash
DOTFILES=$(pwd -P)

dolink() {
    local SRC_NAME=$1
    local DEST_DIR=$2
    local DEST_NAME=${3:-$1}
    [[ -z "$SRC_NAME" || -z "$DEST_DIR" || -z "$DEST_NAME" ]] && return

    local SRC_PATH=$DOTFILES/$SRC_NAME
    local DEST_PATH=$DEST_DIR/$DEST_NAME

    echo "Linking $SRC_PATH to $DEST_PATH"
    mkdir -p $DEST_DIR
    rm -rf $DEST_PATH
    ln -s $SRC_PATH $DEST_PATH
}

# dolink <src name> <dest dir> [dest name]
dolink .bashrc ~
dolink .bash_profile ~
dolink nvim ~/.config
dolink .wakatime.cfg ~/.config/wakatime
dolink pythonrc ~/.config/python
dolink git-config ~/.config/git config
dolink wgetrc ~/.config
dolink xinit ~/.config
