#!/bin/bash

# Install some common command tools:
#   1. curl
#   2. openssh-server
#   3. git 
#   4. python-pip python3-pip
#   5. ipython ipython3
#   6. nautilus-open-teminal

sudo apt-get -y install curl openssh-server git python-pip python3-pip nautilus-open-terminal
sudo -H python2 -m pip install -U pip ipython 
sudo -H python3 -m pip install -U pip ipython 
