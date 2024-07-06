mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip-components 1 -C homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

brew install neovim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
git clone git@github.com:javeoff/nvim_config.git ~/.config/nvim
