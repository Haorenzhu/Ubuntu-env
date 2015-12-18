#!/bin/bash
# Step 1:
#   Installing the Sun JDK1.8/Openjdk-8 and Setting the environment viriables
     
 apt-get -y install openjdk-8-jdk
     
#add-apt-repository -y ppa:webupd8team/java
#apt-get update
#apt-get -y install oracle-java8-installer oracle-java8-set-default
     
# Step 2:
#   Config the environment viriables.
#sed -i "$ a export JAVA_HOME=/usr/lib/jvm/java-7-oracle/" /etc/environment  
#sed -i "$ a export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH" /etc/environment  
#sed -i "$ a export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH" /etc/environment
#source /etc/environment
