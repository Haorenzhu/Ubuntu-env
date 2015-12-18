#!/bin/bash

# Install vim and configurate the plugins.
# Here I use the popular configuration from 'https://github.com/ma6174/vim'.
if [ ! -e ~/.vim ]; then
    apt-get -y install vim
    wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
fi
