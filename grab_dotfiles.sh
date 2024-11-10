#!/bin/bash

# Ensure we're in the home directory
cd

# Download dotfiles
git clone git@github.com:emilian-chiper/dotfiles.git

# Move into dotfiles directory
cd ~/dotfiles

# Stow dotfiles
stow --adopt .
