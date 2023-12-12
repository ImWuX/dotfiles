ROOT_HOME="/root"
USER_HOME=$(realpath ~)

# Mirror nvim share/state
sudo mkdir -p $ROOT_HOME/.local/share
sudo rm -rf $ROOT_HOME/.local/share/nvim
sudo mkdir -p $ROOT_HOME/.local/state
sudo rm -rf $ROOT_HOME/.local/state/nvim
sudo ln -s $USER_HOME/.local/share/nvim $ROOT_HOME/.local/share/nvim
sudo ln -s $USER_HOME/.local/state/nvim $ROOT_HOME/.local/state/nvim
