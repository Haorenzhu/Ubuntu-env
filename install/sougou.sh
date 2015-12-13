#!/bin/bash

# Install the Sougou input method.
sudo apt-get -y remove ibus
echo "\n" | sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get update
sudo apt-get -y install fcitx fcitx-config-gtk fcitx-sunpinyin fcitx-googlepinyin fcitx-module-cloudpinyin  fcitx-sogoupinyin
sudo apt-get -y install fcitx-table-all
im-switch -s fcitx -z default
