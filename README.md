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

### INSTALAR Xunil Osint Tools

Una vez hecha la instalación básica del sistema operativo se debe crear el usuario xunil 
y darle los privilegios necesarios para poder instalar las diferentes aplicaciones.

1º Crear el usuario xunil y añadirlo a sudoers:
~~~bash
# Entrar como superusuario y tras introducir la contraseña de root 
su -l
# editaremos el fichero
nano /etc/sudoers
# y editamos el fichero sudoers
En el apartado
Default     env_reset # añadimos pwfeedback para cuando la terminal
nos solicite la contraseña aparezca asteriscos
#ahora buscamos a root y a continuación damos de alta al usuario xunil
con los mismos privilegios que root
xunil   ALL=(ALL:ALL) ALL
# salimos de la terminal para que en la nueva terminal se aplique los cambios realizados
con <Ctrl>O para garbar y <Ctrl>X para salir
exit
~~~
2º Instalar Git y Clonar el repositorio
~~~bash
sudo apt install git
git clone https://github.com/laprise2023/Xunil-Osint-Tools.git ~/XunilTools
~~~
3º Configurar el entorno
~~~bash
cd XunilTools
sudo sh ConfigGrub.sh
