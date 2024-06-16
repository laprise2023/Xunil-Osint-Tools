#!/bin/bash

AZUL1='\033[94m'
AZUL2='\033[95m'
AZUL3='\033[96m'
ROJO='\033[91m'
VERDE='\033[92m'
NARANJA='\033[93m'
RC='\e[0m'
COLOROFF='\033[0m'


cabecera(){
clear
echo ""
clear
OPC=9
echo "$NARANJA
	      ╔═════════════════════════════════════════════════════╗
	      ║           Script instalación Osint Xunil            ║
	      ║        Trabajo Fin de Master Ciberseguridad         ║
	      ║          Escrito por Luis Fernández                 ║
	      ╚═════════════════════════════════════════════════════╝"


echo "$AZUL1
	╔══════════════════════════════════════════════════════════════════════════╗
	║     Este script instala unos programas basico con fin de mostrar         ║
	║  la forma de como se puede programar un script para realizar             ║
	║  cualquier instalación con el fin de personalizar un entorno de trabajo  ║
	║    1. Instalará actualizaciones necesarias para un buen funcionamiento   ║
	║    2. Instalará un programa de obterncion de informaciónlas              ║
	║    3. Colocara los inconos en el escritorio principal                    ║
	╚══════════════════════════════════════════════════════════════════════════╝"
}

cabecera
echo  "$RC"
echo -n "$NARANJA                        [Pulse intro para comenzar]"
read opc
echo -e "$RC"

cabecera
echo  "$RC"
echo "$VERDE
	      ╔═════════════════════════════════════════════════════╗
	      ║     Actualizando el sistema operativo               ║
	      ╚═════════════════════════════════════════════════════╝"

# Actualizar el sistema operativo
sudo apt -y update && sudo apt -y upgrade
# Instalar herramientas
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y default-jre
sudo apt install -y python3-pip
sudo apt install -y zip
sudo apt install -y libglib2.0-dev
sudo apt install -y wget
sudo apt install -y network-manager
sudo apt install -y network-manager-gnome
sudo systemctl enable NetworkManager.service

read opc
echo -e "$RC"

cabecera
echo  "$RC"
echo "$AZUL3
	      ╔═════════════════════════════════════════════════════╗
	      ║             Instalando EyeWitness                   ║
	      ╚═════════════════════════════════════════════════════╝"
echo  "$RC"
echo  "$RC"

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
echo  "$RC"
echo  "$VERDE EyeWitness instalado $RC"
echo  "$RC"
read opc
echo e "$RC"

cabecera
echo  "$RC"
echo "$AZUL3
	      ╔═════════════════════════════════════════════════════╗
	      ║             Instalando Maltego                      ║
	      ╚═════════════════════════════════════════════════════╝"
echo  "$RC"
echo  "$RC"
mkdir  ~/XunilTools/maltego && cd  ~/XunilTools/maltego
wget -c https://downloads.maltego.com/maltego-v4/linux/Maltego.v4.7.0.deb
sudo dpkg -i Maltego.v4.7.0.deb
sudo apt install -y maltego
rm ~/XunilTools/maltego/Maltego.v4.7.0.deb
echo  "$RC"
echo  "$RC"
echo  "$VERDE Maltego instalado $RC"
echo  "$RC"
read opc
echo e "$RC"
cabecera
echo  "$RC"
echo "$AZUL3
	      ╔═════════════════════════════════════════════════════╗
	      ║             Instalando Webapp-Manager               ║
	      ╚═════════════════════════════════════════════════════╝"
echo  "$RC"
echo  "$RC"
cd ~/XunilTools/instalacion
sudo dpkg -i webapp-manager_1.3.4_all.deb
echo  "$RC"
echo  "$RC"
echo  "$VERDE Webapp-Manager instalado $RC"
echo  "$RC"
read opc
echo e "$RC"
cabecera
echo  "$RC"
echo "$AZUL3
	      ╔═════════════════════════════════════════════════════╗
	      ║          Colocando iconos en escritorio             ║
	      ╚═════════════════════════════════════════════════════╝"
echo  "$RC"
echo  "$RC"
sudo cp /home/xunil/XunilTools/escritorio/* /home/xunil/Escritorio
echo -e "$COLOROFF"
sudo apt autoremove -y --purge
sudo apt clean -y
sudo journalctl --vacuum-time=3d
sudo find /var/log/ -type f -exec cp /dev/null {} \;
rm -rf ~/.cache/*
cat /dev/null > ~/.bash_history
cabecera
echo -e "$AZUL3 A continuación se reiniciará el sistema para aplicar los últimos cambios"
echo -e "$NARANJA Pulsa intro para continuar"
read -p ""
systemctl reboot
