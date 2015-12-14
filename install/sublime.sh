#!/bin/bash

# Installing the popular code editor "Sublime text3."
echo "\n" | sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer
