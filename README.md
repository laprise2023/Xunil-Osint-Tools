![LogoREADME](https://github.com/laprise2023/Xunil-Osint-Tools.git)
[![Python Version](https://img.shields.io/badge/python-3.9+-FF8400)](https://www.python.org) [![License](https://img.shields.io/badge/license-GPLv3-FF8400.svg)](https://github.com/blacklanternsecurity/bbot/blob/dev/LICENSE) [![version](https://img.shields.io/badge/version-1.0.0-green.svg)](https://semver.org)

# Sherlock Linux 
### https://www.sherlock-linux.org/
### Distribución de OSINT basada en Debian 12 y entorno de escritorio XFCE.

- Gran cantidad de herramientas preinstaladas para la obtención de información en fuentes abiertas para investigaciones OSINT.
- Navegadores preconfigurados con los mejores recursos para investigaciones OSINT.
- Entorno de escritorio diseñado para tener todas las herramientas accesibles por categorías.

### [Descarga](https://www.sherlock-linux.org/descarga/) SHERLOCK LINUX.

- Usuario: sherlock
- Contraseña: sherlock


### O ...

### INSTALA SHERLOCK LINUX

Este script se ha probado únicamente en una distribución Debian 12 con entorno de escritorio XFCE.

1º Crear el usuario sherlock y añadirlo a sudoers:
~~~bash
su -l
apt install sudo
adduser sherlock sudo
echo 'sherlock  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su sherlock
~~~
