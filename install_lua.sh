#!/bin/bash

# Install Lua
curl -R -O ~/lua-5.1.5.tar.gz http://www.lua.org/ftp/lua-5.1.5.tar.gz
cd
tar -zxf lua-5.1.5.tar.gz
cd ~/lua-5.1.5
make linux test
sudo make install
cd
