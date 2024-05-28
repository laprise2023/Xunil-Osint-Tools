#!/bin/bash

# instalar neofetch. Este programa luego no sera de gran utilidad para conocer las caracteristicas de nuestro sistema
sudo apt install neofetch

# Cambiar imagen de fondo de grub
# Renombro el fichero imagen desktop-grub.png
# Esta el la imagen que nos va a presentar la pantalla GRUP al inicio
sudo mv /usr/share/images/desktop-base/desktop-grub.png /usr/share/images/desktop-base/desktop-grubBACKUP.png
sudo mv /etc/default/grub /etc/default/grubBACKUP

cd Imagenes
sudo cp desktop-grub.png /usr/share/images/desktop-base/desktop-grub.png
sudo cp desktop-background.png /usr/share/images/desktop-base/default
sudo cp FondoInicio.jpg /usr/share/images/desktop-base/FondoInicio.jpg

cd
cd XunilTools/otros
sudo cp grub /etc/default/grub
sudo update-grub

sudo mv /usr/share/images/desktop-base/desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreenBACKUP.xml
sudo cp desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreen.xml
sudo ln -s /usr/share/images/desktop-base/FondoInicio.jpg /usr/share/desktop-base/emerald-theme/FondoInicio.jpg

sudo apt install -y lightdm-gtk-greeter-settings
