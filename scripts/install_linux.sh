#!/bin/bash

apt update
apt install -y build-essential git curl python3-pip python3-pynvim tar

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

rm -rf /opt/nvim-linux-x86_64
tar -C /opt -xzf nvim-linux-x86_64.tar.gz

echo 'export PATH="/opt/nvim-linux-x86_64/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/nvim-linux-x86_64/bin:$PATH"' >> ~/.bashrc
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

rm -rf ~/.config/nvim
git clone --depth 1 https://github.com/javeoff/nvim_config ~/.config/nvim
