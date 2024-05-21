#!/bin/bash
#Luis Fernández

# Se desplaza al directorio principal
cd $HOME/XunilTools/

# Se descarga los programas
sudo wget https://downloads.maltego.com/maltego-v4/linux/Maltego.v4.6.0.linux.zip
sudo unzip Maltego.v4.6.0.linux.zip
sudo rm Maltego.v4.6.0.linux.zip
cd $HOME/XunilTools/

# Se cambio el modo a ejecución
sudo chown -R xunil:xunil ./maltego_4.6.0

# Se mueve el fichero al director maltego
sudo mv maltego_4.6.0 maltego

# Hay que instalar Java
# sudo apt update
# sudo apt upgrade
# sudo apt install default-jre default-jdk

# El programa lo lanza desde
#cd maltego/bin/
#sudo sh maltego

cd $HOME/XunilTools/instalacion/
