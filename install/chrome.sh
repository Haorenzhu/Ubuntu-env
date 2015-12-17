#!/bin/bash

# Installing the Chrome
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
sudo apt-get update 
sudo apt-get -y install google-chrome-stable
