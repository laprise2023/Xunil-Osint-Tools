![LogoREADME](https://github.com/laprise2023/Xunil-Osint-Tools/blob/main/Imagenes/LogoXunil.jpg)

[![License](https://img.shields.io/badge/license-GPLv3-FF8400.svg)](https://github.com/blacklanternsecurity/bbot/blob/dev/LICENSE) [![version](https://img.shields.io/badge/version-1.0.0-green.svg)](https://semver.org)

# Xunil Tools Linux 
### [Acceso WEB](https://sites.google.com/view/xunilosint/inicio)
### Distribución de OSINT basada en Debian 12.

- Descripción detallada de como instalar y mantener una distribución personalizada de Debian.
- Entorno de escritorio diseñado para tener todas las herramientas accesibles por categorías.

### [Descarga](https://sites.google.com/view/xunilosint/descarga/) Xunil Tools Linux.

- Usuario: xunil
- Contraseña: linux


### O ...

### INSTALA Xunil Osint Tools

Una vez hecha la instalación básica se debe crear el usuario xunil y darle los privilegios 
necesarios para poder instalar las diferentes aplicaciones.

1º Crear el usuario xuni y añadirlo a sudoers:
~~~bash
su -l
apt install sudo
adduser sherlock sudo
echo 'sherlock  ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su sherlock
~~~
