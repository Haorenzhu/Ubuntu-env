#!/bin/bash
# Install Java environment and Eclipse Mar release.

if [ ! -e /opt/eclipse-jee-mars-1-linux-gtk-x86_64 ]; then
    # Step 1:
    #   Copy the Eclipse Mar release.
    cp ../apt/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz /opt/
    tar -zxvf /opt/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz

    # Step2
    #   Start the pycharm via CLI.
    echo "#!/bin/sh" > /usr/bin/eclipse    
    echo 'nohup /opt/eclipse/eclipse "$@"&' >> /usr/bin/eclipse
    chmod a+x /usr/bin/eclipse

    # Step 3:
    #   Setting up a desktop icon
    cp ../etc//eclipse.desktop /usr/share/applications/
fi
