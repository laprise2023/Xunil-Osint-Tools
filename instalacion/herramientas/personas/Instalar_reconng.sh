#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

# para su instalación ver
# https://www.nosolohacking.info/recon-ng-instalacion/

sudo apt install git python3-pip -y

sudo git clone https://github.com/lanmaster53/recon-ng.git

cd recon-ng

sudo pip3 install --break-system-packages -r REQUIREMENTS

# sudo ./recon-ng

cd $HOME/XunilTools/instalacion/
