#!/bin/bash
#Luis Fernández
echo ""
clear
opc=9
echo ""
echo "
	╔═════════════════════════════════════════════════════╗
	║        Script instalación Xunil Tools Osint         ║
	║        Trabajo Fin de Master Ciberseguridad         ║
	║          Escrito por \e[4;34;40mLuis Fernández\e[m                 ║
	╚═════════════════════════════════════════════════════╝"
echo ""
echo "
	╔═════════════════════════════════════════════════════╗
	║                                                     ║
	║    Instalación y modificacion entorno GRUB          ║
	║      pantalla de inicio y fondo de pantalla         ║
	║                                                     ║
	╚═════════════════════════════════════════════════════╝"
echo ""
echo -n "	[#] Pulse Intro para continuar "
read opc
# instalar neofetch. Este programa luego no sera file:///home/xunil/XunilTools/Imagenes/desktop-grub.jpgde gran utilidad para conocer las caracteristicas de nuestro sistema
sudo apt install neofetch
# Cambiar imagen de fondo de grub
# Renombro el fichero imagen desktop-grub.png
# Esta el la imagen que nos va a presentar la pantalla GRUP al iniciofile:///home/xunil/XunilTools/Imagenes/desktop-grub.jpg
sudo mv /usr/share/images/desktop-base/desktop-grub.png /usr/share/images/desktop-base/desktop-grubBACKUP.png
sudo mv /etc/default/grub /etc/default/grubBACKUP
cd ~/XunilTools/Imagenes
sudo cp desktop-grub.png /usr/share/images/desktop-base/desktop-grub.png
sudo cp desktop-background.png /usr/share/images/desktop-base/default
sudo cp FondoInicio.jpg /usr/share/images/desktop-base/FondoInicio.jpg
cd
cd ~/XunilTools/Otros
sudo cp grub /etc/default/grub
sudo update-grub
cd
cd ~/XunilTools/Imagenes
sudo mv /usr/share/images/desktop-base/desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreenBACKUP.xml
sudo cp desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreen.xml
sudo ln -s /usr/share/images/desktop-base/FondoInicio.jpg /usr/share/desktop-base/emerald-theme/FondoInicio.jpg
sudo apt install -y lightdm-gtk-greeter-settings
clear
opc=9
echo ""
echo "
\e[0;31;40m
╔═════════════════════════════════════════════════════╗
║                                                     ║
║        Operación finalizada correctamente           ║
║                                                     ║
║          REINICIE LA MAQUINA                        ║
║                                                     ║
╚═════════════════════════════════════════════════════╝\e[m"
echo ""
echo -n "	[#] Pulse Intro para continuar "
read opc
