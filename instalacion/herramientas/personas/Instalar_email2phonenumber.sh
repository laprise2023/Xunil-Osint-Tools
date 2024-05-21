#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

sudo git clone https://github.com/martinvigo/email2phonenumber.git

cd email2phonenumber

sudo pip3 install --break-system-packages beautifulsoup4 requests

# python3 email2phonenumber.py --help

cd $HOME/XunilTools/instalacion/
