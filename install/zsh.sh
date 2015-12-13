#!/bin/bash

# Installing the "zsh" shell and "oh-my-zsh" configration.

sudo apt-get -y install zsh
sudo sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Installing the zsh-syntax-highlighting for the cmd highlighting
cd ~/.oh-my-zsh/custom/plugins; test -e zsh-syntax-highlighting
if test $? -eq 1; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git 
    echo "plugins=(zsh-syntax-highlighting)" >> .zshrc
    sed -i "$ a source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ~/.zshrc
fi
