source ~/shared/shared-configs/shared-dotfiles/env.sh

rm -rf ~/.config/nvim

mkdir ~/.config/nvim
sudo ln -s $CONFIG_DIR/neovim-config/* ~/.config/nvim
