#!/bin/bash

# Install the GUI client of shadowsocks for the normal use of Chrome.
add-apt-repository -y ppa:hzwhuang/ss-qt5
apt-get update
apt-get -y install shadowsocks-qt5
