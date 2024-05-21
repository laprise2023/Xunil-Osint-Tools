#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

sudo git clone https://github.com/opsdisk/metagoofil

cd metagoofil

sudo pip3 install --break-system-packages -r requirements.txt

#Google has rightfully detected you as a bot and will block your IP
#for a set period of time.  One solution is to use proxychains
#and a bank of proxies to round robin the lookups.

#sudo apt install proxychains4 -y

#sudo python3 metagoofil.py -h

cd $HOME/XunilTools/instalacion/
