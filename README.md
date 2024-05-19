![LogoREADME](https://github.com/laprise2023/Xunil-Osint-Tools/blob/main/Imagenes/LogoXunil.jpg)
[![License](https://img.shields.io/badge/license-GPLv3-FF8400.svg)](https://github.com/blacklanternsecurity/bbot/blob/dev/LICENSE) [![version](https://img.shields.io/badge/version-1.0.0-green.svg)](https://semver.org)

# Xunil Tools Linux 
### [Acceso WEB](https://sites.google.com/view/xunilosint/inicio)
### Distribución de OSINT basada en Debian 12.

- Gran cantidad de herramientas preinstaladas para la obtención de información en fuentes abiertas para investigaciones OSINT.
- Navegadores preconfigurados con los mejores recursos para investigaciones OSINT.
- Entorno de escritorio diseñado para tener todas las herramientas accesibles por categorías.

### [Descarga](https://sites.google.com/view/xunilosint/descarga/) Xunil Tools Linux.

- Usuario: xunil
- Contraseña: linux


### O ...

### INSTALA Xunil Osint Tools

Este script se ha probado únicamente en una distribución Debian 12 con entorno de escritorio XFCE.

1º Crear el usuario sherlock y añadirlo a sudoers:
~~~bash
su -l
apt install sudo
adduser sherlock sudo
echo 'sherlock  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su sherlock
~~~
