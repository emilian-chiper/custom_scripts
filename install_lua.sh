#!/bin/bash

# Install Lua
curl -R -O http://www.lua.org/ftp/lua-5.1.5.tar.gz
tar -zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make linux test
sudo make install
cd
