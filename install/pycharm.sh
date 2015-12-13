#!/bin/bash

# Installing Python IDE Pycharm.
URL=https://d1opms6zj7jotq.cloudfront.net/python/pycharm-community-5.0.2.tar.gz
DIR=/opt
wget -c $URL -P $DIR
cd $DIR; tar -zxvf pycharm-community-5.0.2.tar.gz
