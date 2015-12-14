#!/bin/bash

# Install the Sougou input method.
sudo apt-get -y remove ibus
echo "\n" | sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get update
sudo apt-get -y install fcitx fcitx-config-gtk #fcitx-sogoupinyin
sudo apt-get -y install fcitx-table-all
wget -c http://cdn2.ime.sogou.com/dl/index/1446541585/sogoupinyin_2.0.0.0068_amd64.deb?st=lgy8rSABVGvhtguzDL_rjw&e=1450074814&fn=sogoupinyin_2.0.0.0068_amd64.deb -P /opt/
sudo dpkg -i sogoupinyin_2.0.0.0068_amd64.deb
gsettings set org.gnome.settings-daemon.plugins.keyboard active false
