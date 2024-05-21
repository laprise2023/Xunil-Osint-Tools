#!/bin/bash
#Luis Fernández

# Sublist3r es una herramienta python diseñada para enumerar subdominios de sitios web utilizando OSINT. Ayuda a los probadores de penetración y cazadores de bugs a recopilar y reunir subdominios para el dominio al que se dirigen. Sublist3r enumera subdominios utilizando muchos motores de búsqueda como Google, Yahoo, Bing, Baidu y Ask. Sublist3r también enumera subdominios utilizando Netcraft, Virustotal, ThreatCrowd, DNSdumpster y ReverseDNS.

cd $HOME/XunilTools/

git clone https://github.com/aboul3la/Sublist3r.git

cd Sublist3r

sudo pip3 install --break-system-packages -r requirements.txt

#sudo python3 sublist3r.py -h

cd $HOME/XunilTools/instalacion/
