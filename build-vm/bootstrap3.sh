#!/usr/bin/env bash

# Compiling jStar
cd /usr/local/jstar
./configure --prefix /usr/local/jstar
make
make test

# Installing jStar-Eclipse plugin
cd /opt/eclipse
./eclipse -application org.eclipse.equinox.p2.director -noSplash -repository http://github.com/seplogic/jstar-eclipse/raw/master/com.jstar.eclipse.update.site -installIUs jstar.eclipse.feature.feature.group

# Downloading workspace from GitHub
cd
wget -O /home/vagrant/workspace.tar.gz https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/workspace.tar.gz
cd /home/vagrant && sudo tar -zxvf workspace.tar.gz
sudo chmod -R 777 /home/vagrant/workspace

# Installing FlashPlayer Plugin
cd
sudo apt-get install flashplugin-installer

# Downloading other documents
wget -O /home/vagrant/Desktop/LICENSE.txt https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/LICENSE.txt
wget -O /home/vagrant/Desktop/README.txt https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/README.txt
wget -O /home/vagrant/Desktop/installation.txt https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/installation.txt
wget -O /home/vagrant/Desktop/jStar-Eclipse-YouTube.desktop https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/jStar-Eclipse-YouTube.desktop
wget -O /home/vagrant/Desktop/jStar-Eclipse-Executables.tar.gz https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/jStar-Eclipse-Executables.tar.gz
cd /home/vagrant/Desktop && sudo tar -zxvf jStar-Eclipse-Executables.tar.gz
sudo rm -f /home/vagrant/Desktop/jStar-Eclipse-Executables.tar.gz
sudo chmod -R 777 /home/vagrant/Desktop