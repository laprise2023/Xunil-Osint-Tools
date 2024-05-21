#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

sudo apt-get update

sudo wget https://github.com/magkopian/keepassxc-debian/releases/download/2.3.0-1/keepassxc_2.3.0-1_amd64_stable_stretch.deb

sudo dpkg -i keepassxc_2.3.0-1_amd64_stable_stretch.deb

sudo apt --fix-broken install

sudo rm -R keepassxc_2.3.0-1_amd64_stable_stretch.deb

# keepassxc

cd $HOME/XunilTools/instalacion/
