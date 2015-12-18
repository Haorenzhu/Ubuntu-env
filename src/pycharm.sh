#!/bin/bash

if [ ! -e /opt/pycharm-community-5.0.2 ]; then
    # Step 1: 
    #   Copy Python IDE Pycharm.
    cp ../apt/pycharm-community-5.0.2.tar.gz /opt/ 
    tar -zxvf /opt/pycharm-community-5.0.2.tar.gz -C /opt/
    sh /opt/pycharm-community-5.0.2/bin/pycharm.sh

    # Step 2:
    #   Start the pycharm via CLI.
    echo "#!/bin/sh" > /usr/bin/pycharm
    echo 'nohup /opt/pycharm-community-5.0.2/bin/pycharm.sh "$@"&' >> /usr/bin/pycharm 
    chmod a+x /usr/bin/pycharm
fi
