#!/bin/bash

# Step 1: 
#   Installing Python IDE Pycharm.
URL=https://d1opms6zj7jotq.cloudfront.net/python/pycharm-community-5.0.2.tar.gz
DIR=/opt
wget -c $URL -P $DIR
cd $DIR; tar -zxvf pycharm-community-5.0.2.tar.gz
. /pycharm-community-5.0.2/bin/pycharm.sh

# Step 2:
#   Start the pycharm via CLI.
sudo echo "#!/bin/sh" > /usr/bin/pycharm
sudo echo 'nohup /opt/pycharm-community-5.0.2/bin/pycharm.sh "$@"&' 

# Step 3:
#   Fix the font rendering.
sudo add-apt-repository -y ppa:no1wantdthisname/ppa
sudo add-apt-repository -y ppa:no1wantdthisname/openjdk-fontfix
sudo apt-get update; sudo apt-get -y upgrade
sudo apt-get -y install fontconfig-infinality
