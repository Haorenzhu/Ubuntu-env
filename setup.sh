#!/bin/bash
set -xe

echo -e "\033[31m Changing the original Sources List... \033[0m"
sleep 1; sh -xe ./install/sources.sh

echo -e "\033[31m Installing some most-used Command Tools... \033[0m"
sleep 1; sh -xe ./install/cmd.sh

echo -e "\033[31m Installing zsh and oh-my-zsh... \033[0m"
sleep 1; sh -xe ./install/zsh.sh

echo -e "\033[31m Installing Vim and a popular configuration... \033[0m";
sleep 1; sh -xe ./install/vim.sh

echo -e "\033[31m Installing the Sougou input method... \033[0m";
sleep 1; sh -xe ./install/sougou.sh

echo -e "\033[31m Installing the Chrome Web Searcher... \033[0m";
sleep 1; sh -xe ./install/chrome.sh

echo -e "\033[31m Installing the Shadowsocks... \033[0m";
sleep 1; sh -xe ./install/shadowsocks.sh

echo -e "\033[31m Installing the Sublime Editor... \033[0m";
sleep 1; sh -xe ./install/sublime.sh

echo -e "\033[31m Installing the Eclipse IDE... \033[0m";
sleep 1; sh -xe ./install/eclipse.sh

echo -e "\033[31m Installing the Pycharm IDE... \033[0m";
sleep 1; sh -xe ./install/pycharm.sh
