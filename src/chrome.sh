#!/bin/bash

# Installing the Chrome
if [ ! -e /etc/apt/sources.list.d/google.list ]; then
    #wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
    apt-get update 
    apt-get -y install google-chrome-stable
fi
