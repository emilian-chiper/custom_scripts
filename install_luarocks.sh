#!/bin/bash

# Install luarocks
curl -O https://luarocks.github.io/luarocks/releases/luarocks-3.11.1.tar.gz

./configure --with-lua-include=/usr/local/include

make

sudo make install

cd
