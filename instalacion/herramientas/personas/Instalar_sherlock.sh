#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

# clone the repo
sudo git clone https://github.com/sherlock-project/sherlock.git

# change the working directory to sherlock
cd sherlock

# install the requirements
pip3 install --break-system-packages -r requirements.txt

cd $HOME/XunilTools/instalacion/
