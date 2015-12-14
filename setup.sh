#!/bin/bash
set -xe; cd ./install/

echo -e "\033[31m Changing the original Sources List... \033[0m"
sleep 1; sh -xe ./sources.sh

echo -e "\033[31m Installing some most-used Command Tools... \033[0m"
sleep 1; sh -xe ./cmd.sh

echo -e "\033[31m Installing zsh and oh-my-zsh... \033[0m"
sleep 1; sh -xe ./zsh.sh

echo -e "\033[31m Installing the Sougou input method... \033[0m";
sleep 1; sh -xe ./sougou.sh

echo -e "\033[31m Installing the Chrome Web Searcher... \033[0m";
sleep 1; sh -xe ./chrome.sh

echo -e "\033[31m Installing the Shadowsocks... \033[0m";
sleep 1; sh -xe ./shadowsocks.sh

echo -e "\033[31m Installing the Sublime Editor... \033[0m";
sleep 1; sh -xe ./sublime.sh

echo -e "\033[31m Installing the Eclipse IDE... \033[0m";
sleep 1; sh -xe ./eclipse.sh

echo -e "\033[31m Installing the Pycharm IDE... \033[0m";
sleep 1; sh -xe ./pycharm.sh

echo -e "\033[31m Installing Vim and a popular configuration... \033[0m";
sleep 1; sh -xe ./vim.sh

sudo reboot
