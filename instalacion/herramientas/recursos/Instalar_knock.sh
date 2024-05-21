#!/bin/bash
#Luis Fernández

cd $HOME/XunilTools/

sudo git clone https://github.com/guelfoweb/knock.git

cd knock

sudo pip3 install --break-system-packages -r requirements.txt

# crear en el directorio knockpy el fichero de configuracion config.json con las API de Virustotal.
# API Virustotal de laprise.adrien@mail.com -> C@diz2023

# nano knockpy/config.json <- añadir las API Key de Virustotal
# {"Virustotal": "8e4c76dd148a6bd06592b2deb97d1b3c6da59525cd3f6217c31824f58e42b31c"}

#sudo python3 knockpy.py -h

cd $HOME/XunilTools/instalacion/
