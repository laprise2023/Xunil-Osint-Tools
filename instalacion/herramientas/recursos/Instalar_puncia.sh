#!/bin/bash
#Luis Fernández

# Cambio al directorio principal
cd $HOME/XunilTools/

#Clonar el repositorio alojado en github del programa en cuestion
sudo git clone https://github.com/ARPSyndicate/puncia.git

# Se posiciona sobre el directorio creado conteniendo el programa
cd puncia

# instruccion para su instalación
sudo pip3 install --break-system-packages puncia

# información como se puede ejecutar el programa
#puncia

# Vuelta al menu de instalación para poder continuar con la
# instalación de nuevo programas
cd $HOME/XunilTools/instalacion/
