#!/bin/bash

# Install the GUI client of shadowsocks for the normal use of Chrome.
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get -y install shadowsocks-qt5
