#!/bin/bash

# Step 1:
#   Install the newest fcitx framework.
apt-get -y remove ibus
add-apt-repository -y ppa:fcitx-team/nightly
apt-get update
apt-get -y install fcitx fcitx-config-gtk fcitx-googlepinyin #fcitx-sogoupinyin
apt-get -y install fcitx-table-all

# Step 2: 
#   Install Sougou Input Method.
#if [ ! -e /opt/sogoupinyin_2.0.0.0068_amd64.deb ]; then
#    cp ../apt/sogoupinyin_2.0.0.0068_amd64.deb /opt/
#    dpkg -i /opt/sogoupinyin_2.0.0.0068_amd64.deb
#    gsettings set org.gnome.settings-daemon.plugins.keyboard active false
#fi
