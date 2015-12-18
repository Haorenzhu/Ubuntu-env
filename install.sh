#!/bin/bash
set -xe; cd src/

echo -e "\033[31m Changing the original Sources List... \033[0m"
sleep 2; sh sources.sh

echo -e "\033[31m Installing some most-used Command Tools... \033[0m"
sleep 2; sh cmd.sh

echo -e "\033[31m Installing Vim and a popular configuration... \033[0m";
sleep 2; sh vim.sh

echo -e "\033[31m Installing zsh and oh-my-zsh... \033[0m"
sleep 2; sh zsh.sh

echo e "\033[31m Installing jdk... \033[0m"
sleep 2; sh jdk.sh

echo -e "\033[31m Installing the Sougou input method... \033[0m";
sleep 2; sh sougou.sh

echo -e "\033[31m Installing the Shadowsocks... \033[0m";
sleep 2; sh shadowsocks.sh

echo -e "\033[31m Installing the Sublime Editor... \033[0m";
sleep 2; sh sublime.sh

echo -e "\033[31m Installing the Chrome Web Searcher... \033[0m";
sleep 2; sh chrome.sh

echo -e "\033[31m Installing the Eclipse IDE... \033[0m";
sleep 2; sh eclipse.sh

echo -e "\033[31m Installing the Pycharm IDE... \033[0m";
sleep 2; sh pycharm.sh


sudo reboot
