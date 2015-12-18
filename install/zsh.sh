#!/bin/bash

# Installing the "zsh" shell and "oh-my-zsh" configration.

sudo apt-get -y install zsh
sudo wget -qO- https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh -x

# Installing the zsh-syntax-highlighting for the cmd highlighting
cd ~/.oh-my-zsh/custom/plugins; test -e zsh-syntax-highlighting
if test $? -eq 1; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git 
    echo "plugins=(zsh-syntax-highlighting)" > .zshrc
    echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
    echo "alias ll='ls -alF'" >> ~/.zshrc
    echo "alias la='ls -A'" >> ~/.zshrc
fi
