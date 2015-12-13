#!/bin/bash 

# For ubuntu 14.04 release, change the original official sources to get high
# speed. In education network environment, It is good choice to use USTC
# sources. 

# The steps as follow:
# Step 1:   Backup the original "/etc/apt/sources.list" as the 
#           "/etc/apt/sources.list.old".
# Step 2:   Copy the new sources file to original position.

sudo cp /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp ./install/sources.list /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y upgrade
