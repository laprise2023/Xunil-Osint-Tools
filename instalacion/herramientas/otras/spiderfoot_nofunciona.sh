#!/bin/bash
#Luis Fernández/
# Fecha creación: 15/12/2023

cd $HOME/XunilTools/

wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz

tar zxvf v4.0.tar.gz

sudo rm v4.0.tar.gz

cd spiderfoot-4.0
sudo pip3 install --break-system-packages -r requirements.txt

# cd $HOME/XunilTools/spiderfoot-4.0
#python3 ./sf.py -l 127.0.0.1:5001

cd $HOME/XunilTools/instalacion/
