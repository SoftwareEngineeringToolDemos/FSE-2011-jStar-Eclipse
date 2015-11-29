#!/usr/bin/env bash

wget -O /home/vagrant/Desktop/eclipse.desktop https://github.com/SoftwareEngineeringToolDemos/FSE-2011-jstar-eclipse/raw/master/build-vm/vm-contents/eclipse.desktop
mkdir /home/vagrant/.config/autostart
mv /home/vagrant/Desktop/eclipse.desktop /home/vagrant/.config/autostart
