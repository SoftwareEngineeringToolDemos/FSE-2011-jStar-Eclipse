#!/usr/bin/env bash

apt-get update

#Remove other software
apt-get remove -y unity-webapps-common
apt-get remove --purge -y libreoffice* 
apt-get clean -y
apt-get autoremove -y
sudo rm -f /usr/share/applications/ubuntu-software-center.desktop

# Downloading Eclipse Mars
wget -nv "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz&r=1" -O eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz
cd /opt/ && sudo tar -zxvf /home/vagrant/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz

# Downloading other dependencies
apt-get install -y git ocaml ocaml-native-compilers

# Downloading JDK 7
mkdir /usr/local/java
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz" -O /usr/local/java/jdk-7u79-linux-x64.tar.gz
tar xvzf /usr/local/java/jdk-7u79-linux-x64.tar.gz -C /usr/local/java

# Editing environment variables
sed -i "\$a \\
JAVA_HOME=/usr/local/java/jdk1.7.0_79\\
JRE_HOME=$JAVA_HOME/jre\\
CORESTAR_HOME=/usr/local/corestar\\
JSTAR_HOME=/usr/local/jstar\\
PATH=\$PATH:\$JAVA_HOME/bin:$\JRE_HOME/bin:\$CORESTAR_HOME/bin:\$JSTAR_HOME/bin\\
export JAVA_HOME\\
export JRE_HOME\\
export CORESTAR_HOME\\
export JSTAR_HOME\\
export PATH\\
" /etc/profile

#Setting up Java
update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.7.0_79/jre/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.7.0_79/bin/javac" 1 
update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.7.0_79/bin/javaws" 1 

update-alternatives --set java /usr/local/java/jdk1.7.0_79/jre/bin/java
update-alternatives --set javac /usr/local/java/jdk1.7.0_79/bin/javac
update-alternatives --set javaws /usr/local/java/jdk1.7.0_79/bin/javaws

# Cloning repositories from GitHub
git clone https://github.com/seplogic/jstar.git /usr/local/jstar
git clone https://github.com/seplogic/corestar.git /usr/local/corestar

# Editing system.ml file in corestar
sed -i "103s/^.*in/  ignore (Sys.signal Sys.sigpipe Sys.Signal_ignore)/" /usr/local/corestar/src/utils/system.ml
sed -i "104d" /usr/local/corestar/src/utils/system.ml

source /etc/profile