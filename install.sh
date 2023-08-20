DOTFILES=$(pwd -P)
ln -s $DOTFILES/.bashrc ~
ln -s $DOTFILES/.bash_profile ~
ln -s $DOTFILES/.alacritty.yml ~
ln -s $DOTFILES/nvim ~/.config/
ln -s $DOTFILES/leftwm ~/.config/
