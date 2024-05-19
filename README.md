Distribución de OSINT basada en Debian 12 y entorno de escritorio XFCE.
Gran cantidad de herramientas preinstaladas para la obtención de información en fuentes abiertas para investigaciones OSINT.
Navegadores preconfigurados con los mejores recursos para investigaciones OSINT.
Entorno de escritorio diseñado para tener todas las herramientas accesibles por categorías.
Descarga XUNIL TOOLS LINUX.
Usuario: xunil
Contraseña: linux
O ...
INSTALA XUNIL TOOLS LINUX
Este script se ha probado sobre una distribución Debian 12.

1º Crear el usuario sherlock y añadirlo a sudoers:

su -l
apt install sudo
adduser sherlock sudo
echo 'sherlock  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su sherlock
