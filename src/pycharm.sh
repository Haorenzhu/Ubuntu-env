#!/bin/bash

if [ ! -e /opt/pycharm-community-5.0.2 ]; then
    # Step 1: 
    #   Copy Python IDE Pycharm.
    cp ../apt/pycharm-community-5.0.2.tar.gz /opt/ 
    tar -zxvf /opt/pycharm-community-5.0.2.tar.gz
    sh /opt/pycharm-community-5.0.2/bin/pycharm.sh

    # Step 2:
    #   Start the pycharm via CLI.
    echo "#!/bin/sh" > /usr/bin/pycharm
    echo 'nohup /opt/pycharm-community-5.0.2/bin/pycharm.sh "$@"&' >> /usr/bin/pycharm 
    chmod a+x /usr/bin/pycharm

    # Step 3:
    #   Fix the font rendering.
    #sudo add-apt-repository -y ppa:no1wantdthisname/ppa
    #sudo add-apt-repository -y ppa:no1wantdthisname/openjdk-fontfix
    #sudo apt-get update; sudo apt-get -y upgrade
    #sudo apt-get -y install fontconfig-infinality
fi
