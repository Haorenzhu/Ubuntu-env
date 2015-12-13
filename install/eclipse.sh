#!/bin/bash

# Install Java environment and Eclipse Mar release.
# Step 1:
#   Downdowning the Eclipse Mar release

URL=http://ftp.kaist.ac.kr/eclipse/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz
DIRPATH=/opt/
wget -c $URL -P $DIRPATH 
cd $DIRPATH
tar -zxvf $DIRPATH/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz

sudo touch /usr/bin/eclipse
sudo chmod 755 /usr/bin/eclipse
sed -i "$ a #!/bin/sh" /usr/bin/eclipse    
sed -i "$ a export ECLIPSE_HOME='/opt/eclipse'" /usr/bin/eclipse
sed -i "$ a $ECLIPSE_HOME/eclipse $*" /usr/bin/eclipse

# Step 2:
#   Setting up a desktop icon
cp ./install/eclipse.desktop /usr/share/applications/

# Step 3:
#   Installing the Sun JDK1.7 and Setting the environment viriables
echo "\n" | sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java7-installer oracle-java7-set-default
#sed -i "$ a export JAVA_HOME=/usr/lib/jvm/java-7-oracle/" /etc/environment  
#sed -i "$ a export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH" /etc/environment  
#sed -i "$ a export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH" /etc/environment
#source /etc/environment
