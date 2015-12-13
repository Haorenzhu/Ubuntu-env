#!/bin/bash

# Install vim and configurate the plugins.
# Here I use the popular configuration from 'https://github.com/ma6174/vim'.
cd ~
sudo apt-get -y install vim
sudo wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
