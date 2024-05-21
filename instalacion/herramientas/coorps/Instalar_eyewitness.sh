#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

sudo git clone https://github.com/RedSiege/EyeWitness.git

cd EyeWitness/Python/setup

sudo sh ./setup.sh

cd $HOME/XunilTools/EyeWitness/Python

python3 -m pip install --break-system-packages fuzzywuzzy
python3 -m pip install --break-system-packages selenium==4.9.1
python3 -m pip install --break-system-packages python-Levenshtein
python3 -m pip install --break-system-packages pyvirtualdisplay
python3 -m pip install --break-system-packages netaddr

sudo chmod +x EyeWitness.py

#cd $HOME/XunilTools/EyeWitness/Python
#python3 EyeWitness.py

cd $HOME/XinulTools/instalacion/
