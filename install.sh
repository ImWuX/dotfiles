DOTFILES=$(pwd -P)
read -p "Install ~/.bashrc? [y/n] " INSTALLBASH
if [ "y" = "$INSTALLBASH" ]; then
    ln -s $DOTFILES/.bashrc ~
    ln -s $DOTFILES/.bash_profile ~    
fi
read -p "Install ~/.alacritty? [y/n] " INSTALLALACRITTY
if [ "y" = "$INSTALLALACRITTY" ]; then
    ln -s $DOTFILES/.alacritty.yml ~
fi
read -p "Install ~/.config/nvim? [y/n] " INSTALLNVIM
if [ "y" = "$INSTALLNVIM" ]; then
    ln -s $DOTFILES/nvim ~/.config/
fi
read -p "Install ~/.config/leftwm? [y/n] " INSTALLLEFTWM
if [ "y" = "$INSTALLLEFTWM" ]; then
    ln -s $DOTFILES/leftwm ~/.config/
fi
