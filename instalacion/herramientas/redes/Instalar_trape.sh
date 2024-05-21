#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

git clone https://github.com/jofpin/trape.git
cd trape
sudo pip3 install --break-system-packages -r requirements.txt

#python3 trape.py -h

cd $HOME/XunilTools/instalacion/
