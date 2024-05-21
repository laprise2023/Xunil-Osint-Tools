#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools

# theHarvester es una herramienta fácil de usar pero poderosa diseñada para usarse durante la etapa de reconocimiento o prueba de penetración.
# Realiza una recopilación de inteligencia de código abierto (OSINT) para ayudar a determinar panorama de amenazas externas de un dominio.
# La herramienta recopila nombres, correos electrónicos, IP, subdominios y URL mediante el uso múltiples recursos públicos.


sudo git clone https://github.com/laramies/theHarvester.git

cd $HOME/XunilTools/theHarvester/requirements/
python3 -m pip install --break-system-packages -r base.txt
python3 -m pip install --break-system-packages -r dev.txt

cd ..
#python3 theHarvester.py

cd $HOME/XunilTools/instalacion/
