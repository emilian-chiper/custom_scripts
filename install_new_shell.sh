#!/bin/bash

# Install zsh
sudo apt install zsh
zsh --version
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Enable autosuggestions ins .zshrc
echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# Reload .zshrc
source ~/.zshrc
