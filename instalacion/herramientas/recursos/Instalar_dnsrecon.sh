#!/bin/bash
#Luis Fernández/
# Fecha creación: 08/12/2023

cd $HOME/XunilTools/

git clone https://github.com/darkoperator/dnsrecon.git

cd dnsrecon/
sudo pip3 install --break-system-packages -r requirements.txt

#python3 dnsrecon.py -h

cd $HOME/XunilTools/instalacion/
