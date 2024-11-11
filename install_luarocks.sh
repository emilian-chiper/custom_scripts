#!/bin/bash

# Install luarocks
curl -O ~/luarocks-3.11.1.tar.gz https://luarocks.github.io/luarocks/releases/luarocks-3.11.1.tar.gz
cd ~/luarocks-3.11.1.tar.gz
./configure --with-lua-include=/usr/local/include
make
sudo make install
cd
