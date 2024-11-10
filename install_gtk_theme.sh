#!/bin/bash

# Create directories
mkdir -p ~/.themes ~/.icons

# Download theme and icons archives
wget -O "https://github.com/rose-pine/gtk/releases/download/v2.1.0/gtk3.tar.gz"
wget -O "https://github.com/rose-pine/gtk/releases/download/v2.1.0/rose-pine-moon-icons.tar.gz"

# Unpack theme and icons to appropriate directories
tar -xzvf gtk3.tar.gz gtk3/rose-pine-moon-gtk --strip-components=1 -C ~/.themes
tar -xzvf rose-pine-moon-icons.tar.gz icons/rose-pine-moon --strip-components=1 -C ~/.icons

