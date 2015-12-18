#!/bin/bash

# Step 1:
#   Installing the "zsh" shell and "oh-my-zsh" configration.
apt-get -y install zsh
wget -qO- https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh -x

# Step 2:
#   Installing the zsh-syntax-highlighting for the cmd highlighting
POS=~/.oh-my-zsh/custom/plugins
if [ ! -e "$POS/zsh-syntax-highlighting" ]; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $POS/zsh-syntax-highlighting
    echo "plugins=(zsh-syntax-highlighting)" > $POS/.zshrc
    echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
    echo "alias ll='ls -alF'" >> ~/.zshrc
    echo "alias la='ls -A'" >> ~/.zshrc
    echo "alias vi='vim'" >> ~/.zshrc
fi
