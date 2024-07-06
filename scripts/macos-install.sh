/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install neovim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
git clone git@github.com:javeoff/nvim_config.git ~/.config/nvim
