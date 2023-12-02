DOTFILES=$(pwd -P)
read -p "Install ~/.bashrc? [y/n] " INSTALLBASH
if [ "y" = "$INSTALLBASH" ]; then
    ln -s $DOTFILES/.bashrc ~
    ln -s $DOTFILES/.bash_profile ~    
fi
read -p "Install ~/.config/nvim? [y/n] " INSTALLNVIM
if [ "y" = "$INSTALLNVIM" ]; then
    mkdir -p ~/.config
    ln -s $DOTFILES/nvim ~/.config/
fi
read -p "Install ~/.wakatime? [y/n] " INSTALLWAKATIME
if [ "y" = "$INSTALLWAKATIME" ]; then
    ln -s $DOTFILES/wakatime.cfg ~/.wakatime.cfg
fi
