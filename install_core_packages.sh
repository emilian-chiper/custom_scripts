#!/bin/bash

# Install system packages 1
sudo apt install build-essential cmake pkg-config libpthread-stubs0-dev -y

# Install system packages 2
sudo apt install unzip libtool libtool-bin gettext -y

# Install system packages 3
sudo apt install curl htop lsof ccache ninja-build python3-pip dconf-editor nvidia-settings pavucontrol moreutils clangd -y

# Install clang
sudo apt install clang clang-11 clang-12 clangd clangd-10 clangd-11 clangd-12 -y

# Install tmux
sudo apt install tmux -y

# Install flatpack
sudo apt install flatpak -y

# Install i3 and i3status
sudo apt install i3 i3status
