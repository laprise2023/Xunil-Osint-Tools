#!/bin/bash

AZUL1='\033[94m'
AZUL2='\033[95m'
AZUL3='\033[96m'
ROJO='\033[91m'
VERDE='\033[92m'
NARANJA='\033[93m'
RC='\e[0m'
COLOROFF='\033[0m' 

echo -e "$RC"
echo -e "$RC"
echo -e "$AZUL Este script convertirá tu SO Debian en una distribución dedicada" 
echo -e "$AZUL a la obtención de información en fuentes abiertas, realizará las" 
echo -e "$AZUL siguientes acciones:"
echo -e "$RC"
echo -e "$AZUL 1. Instalará las aplicaciones más utilizadas en OSINT para la recoleción"
echo -e "$AZUL de información en fuentes abiertas."
echo -e "$RC"
echo -e "$AZUL 2. Personalizará el menú de escritorio para tener las aplicaciones accesibles"
echo -e "$AZUL por categorías."
echo -e "$RC"
echo -e "$AZUL 3. Configurará los navegadores Google Chrome y Mozilla Firefox con gran"
echo -e "$AZUL cantidad de recursos para OSINT."
echo -e "$RC"
echo -e "$AZUL Para más información puede visitar la web $AZUL3 www.sherlock-linux.org"
echo -e "$RC"
echo -e "$NARANJA [Pulsa intro para comenzar] ====>>>>>>>>"
read -p ""
echo -e "$RC"

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

mkdir  ~/Programas
cd ~/Programas
#Instalacion del lenguaje de programación GO de Google
wget -c https://go.dev/dl/go1.20.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.20.4.linux-amd64.tar.gz


# Cambiar imagen de fondo de grub
sudo mv /usr/share/images/desktop-base/desktop-grub.png /usr/share/images/desktop-base/desktop-grubBACKUP.png
cd XunilLinux/imagenes

sudo cp desktop-grub.png /usr/share/images/desktop-base/desktop-grub.png
sudo mv /etc/default/grub /etc/default/grubBACKUP
cd XunilLinux/other
sudo cp grub /etc/default/grub
sudo update-grub

cd
cd XunilLinux/imagenes
sudo cp desktop-background.png /usr/share/images/desktop-base/default
sudo cp login-background.svg /usr/share/images/desktop-base/login-background.svg


sudo mv /usr/share/images/desktop-base/desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreenBACKUP.xml
sudo cp desktop-lockscreen.xml /usr/share/images/desktop-base/desktop-lockscreen.xml
sudo ln -s /usr/share/images/desktop-base/login-background.svg /usr/share/desktop-base/emerald-theme/login-background.svg

cd
sudo apt install -y lightdm-gtk-greeter-settings
sudo mv /etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.confBACKUP

cd  XunilLinux/other

sudo cp lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
cd
cd XunilLinux/imagenes
sudo cp Xunil.png /usr/share/images/desktop-base/Xunil.png
default-user-image = /usr/share/images/desktop-base/Xunil.png

xset b off

echo -e "$VERDE Estilos aplicados! $RC"
echo -e "$RC"

echo -e "$AZUL3 Instalando Firefox..."
sudo apt install -y firefox-esr
firefox-esr

echo -e "$VERDE Firefox Instalado $RC"

echo -e "$AZUL3 Instalando Maltego... $RC"
mkdir  ~/Programs/maltego && cd  ~/Programs/maltego
wget -c https://downloads.maltego.com/maltego-v4/linux/Maltego.v4.4.1.deb
sudo dpkg -i Maltego.v4.4.1.deb
sudo apt install -y maltego
rm ~/Programs/maltego/Maltego.v4.4.1.deb
echo -e "$VERDE Maltego instalado $RC"
 

echo -e "$AZUL3 Instalando Google Earth Pro... $RC"
mkdir  ~/Programs/google-earth && cd  ~/Programs/google-earth
wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo apt install -y ~/Programs/google-earth/google-earth-pro-stable_current_amd64.deb
rm ~/Programs/google-earth/google-earth-pro-stable_current_amd64.deb
echo -e "$VERDE Google Earth Pro instalado $RC"


echo -e "$AZUL3 Visual Studio Code... $RC"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
echo -e "$VERDE Visual Studio Code $RC"


echo -e "$VERDE Instalando webhttrack $RC"
sudo apt install -y webhttrack 
echo -e "$VERDE Webhttrack instalado $RC"


echo -e "$AZUL3 Instalando Yacy... $RC"
mkdir ~/Programs/yacy
cd ~/Programs/yacy
sudo dpkg --configure -a
wget https://download.yacy.net/yacy_v1.924_20210209_10069.tar.gz
tar xfz yacy_v1.924_20210209_10069.tar.gz
rm yacy_v1.924_20210209_10069.tar.gz
echo -e "$VERDE Yacy Instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando Phoneinfoga... $RC"
mkdir ~/Programas/phoneinfoga
cd ~/Programas/phoneinfoga
bash <( curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install )
sudo mv ./phoneinfoga /usr/local/bin/phoneinfoga
echo -e "$VERDE Phoneinfoga instalado $RC"


echo -e "$AZUL3 Instalando GoBuster... $RC"
sudo apt install gobuster
echo -e "$VERDE GoBuster instalado $RC"


echo -e "$AZUL3 Instalando WhatWeb.. $RC"
sudo apt install -y whatweb
echo -e "$VERDE WhatWeb instalado $RC"


echo -e "$AZUL3 Instalando XRay... $RC"
git clone https://github.com/evilsocket/xray.git  ~/Programs/XRay/
cd  ~/Programs/XRay/
wget  https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.20.2.linux-amd64.tar.gz
make
echo -e "$VERDE XRay instalado $RC"


echo -e "$AZUL3 Instalando Certgraph.. $RC"
git clone https://github.com/lanrat/certgraph.git  ~/Programs/certgraph
cd  ~/Programs/certgraph
make
go build -o certgraph certgraph.go
echo -e "$VERDE Certgraph instalado $RC"


echo -e "$AZUL3 Instalando VLC.. $RC"
sudo apt -y install vlc
echo -e "$VERDE VLC instalado $RC"


#REQUIERE CONFIGURACIÓN MANUAL
echo -e "$AZUL3 Instalando Mr.Holmes... $RC"
git clone https://github.com/Lucksi/Mr.Holmes  ~/Programas/MrHolmes/
cd  ~/Programas/MrHolmes
python3 -m venv ~/Programs/MrHolmes/MrHolmes-venv
source MrHolmes-venv/bin/activate
sudo chmod +x install.sh
sudo bash install.sh
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Mr.Holmes instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando Spiderfoot... $RC"
mkdir ~/Programs/spiderfoot
cd  ~/Programs/spiderfoot
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
tar zxvf v4.0.tar.gz
rm v4.0.tar.gz
python3 -m venv ~/Programs/spiderfoot/spiderfoot-venv
source spiderfoot-venv/bin/activate
cd spiderfoot-4.0
#Solve problem with Cython 3.0.0
echo "Cython<3" > cython_constraint.txt
PIP_CONSTRAINT=cython_constraint.txt pip install "ai-core-sdk[aicore-content]"
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Spiderfoot instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando Bbot... $RC"
mkdir -p  ~/Programs/bbot/
cd ~/Programs/bbot/
python3 -m venv ~/Programs/bbot/bbot-venv
source bbot-venv/bin/activate
pip3 install bbot
bbot --install-all-deps
deactivate
echo -e "$VERDE Bbot instalado $RC"
 

echo -e "$AZUL3 Instalando Pagodo... $RC"
git clone https://github.com/opsdisk/pagodo.git  ~/Programs/pagodo/
cd  ~/Programs/pagodo/
python3 -m venv pagodo-venv
source pagodo-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Pagodo instalado $RC"
 

echo -e "$AZUL3 Instalando Scanless... $RC"
git clone https://github.com/vesche/scanless  ~/Programs/scanless/
cd  ~/Programs/scanless/
python3 -m venv scanless-venv
source scanless-venv/bin/activate
pip install scanless
deactivate
echo -e "$VERDE Scanless instalado $RC"


echo -e "$AZUL3 Instalando theHarvester... $RC"
git clone https://github.com/laramies/theHarvester.git  ~/Programs/theHarvester/
cd  ~/Programs/theHarvester
python3 -m venv ~/Programs/theHarvester/theHarvester-venv
source theHarvester-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE theHarvester instalado $RC"
 

echo -e "$AZUL3 Instalando Sherlock... $RC"
git clone https://github.com/sherlock-project/sherlock.git  ~/Programs/Sherlock
cd  ~/Programs/Sherlock
python3 -m venv ~/Programs/Sherlock/Sherlock-venv
source Sherlock-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Sherlock instalado $RC"


echo -e "$AZUL3 Instalando Photon... $RC"
git clone https://github.com/s0md3v/Photon.git  ~/Programs/Photon/
cd  ~/Programs/Photon/
python3 -m venv Photon-venv
source Photon-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Photon instalado $RC"
 

echo -e "$AZUL3 Instalando CloudFail... $RC"
git clone https://github.com/m0rtem/CloudFail.git  ~/Programs/CloudFail/
cd  ~/Programs/CloudFail/
python3 -m venv CloudFail-venv
source CloudFail-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE CloudFail instalado $RC"
 

echo -e "$AZUL3 Instalando CloudScraper... $RC"
git clone https://github.com/jordanpotti/CloudScraper.git  ~/Programs/CloudScraper/
cd  ~/Programs/CloudScraper/
python3 -m venv CloudScraper-venv
source CloudScraper-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE CloudScraper instalado $RC"


echo -e "$AZUL3 Instalando DNSRecon... $RC"
git clone https://github.com/darkoperator/dnsrecon.git  ~/Programs/DNSRecon/
cd  ~/Programs/DNSRecon/
python3 -m venv DNSRecon-venv
source DNSRecon-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE DNSRecon instalado $RC"
 

echo -e "$AZUL3 Instalando Hostintel... $RC"
git clone https://github.com/keithjjones/hostintel.git  ~/Programs/Hostintel/
cd  ~/Programs/Hostintel/
python3 -m venv Hostintel-venv
source Hostintel-venv/bin/activate
pip3 install -r requirements.txt
deactivate
echo -e "$VERDE Hostintel instalado $RC"


echo -e "$AZUL3 Instalando Infoga... $RC"
git clone https://github.com/The404Hacking/Infoga.git  ~/Programas/infoga/
cd  ~/Programas/infoga/
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
echo "export PYENV_ROOT=\"$HOME/.pyenv\"" >> -a .bashrc 
echo "export PATH=\"$PYENV_ROOT/bin:$PATH\"" >> -a .bashrc 
echo "if command -v pyenv 1>/dev/null 2>&1; then" >> -a .bashrc 
echo "	eval \"$(pyenv init --path)\"" >> -a .bashrc 
echo "fi" >> -a .bashrc
echo "eval \"$(pyenv virtualenv-init -)\"" >> -a .bashrc 
pyenv install 2.7.18
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
pyenv global 2.7.18
pip2 install virtualenv
python2 -m virtualenv infoga-venv
source infoga-venv/bin/activate
pip2 install requests
deactivate
echo -e "$VERDE Infoga instalado $RC"
 

echo -e "$AZUL3 Instalando GitRecon... $RC"
git clone https://github.com/GONZOsint/gitrecon.git  ~/Programs/gitrecon/
cd  ~/Programs/gitrecon/
python3 -m venv gitrecon-venv
source gitrecon-venv/bin/activate
python3 -m pip install -r requirements.txt
deactivate
echo -e "$VERDE GitRecon instalado $RC"


echo -e "$AZUL3 Instalando ExifTool.. $RC"
mkdir -p  ~/Programs/ExifTool/
cd  ~/Programs/ExifTool/
wget  https://exiftool.org/Image-ExifTool-12.63.tar.gz
tar xfz Image-ExifTool-12.63.tar.gz
rm Image-ExifTool-12.63.tar.gz
echo -e "$VERDE Exiftool instalado $RC"


echo -e "$AZUL3 Instalando EyeWitness... $RC"
git clone https://github.com/RedSiege/EyeWitness.git  ~/Programs/eyewitness/
cd ~/Programs/eyewitness
python3 -m venv ~/Programs/eyewitness/eyewitness-venv
source eyewitness-venv/bin/activate
cd  ~/Programs/eyewitness/Python/setup
sudo bash setup.sh
pip3 install netaddr
pip3 install selenium
pip3 install fuzzywuzzy
pip3 install pyvirtualdisplay
deactivate
echo -e "$VERDE EyeWitness instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando Metagoofil... $RC"
git clone https://github.com/opsdisk/metagoofil  ~/Programs/metagoofil/
cd ~/Programs/metagoofil/
python3 -m venv ~/Programs/metagoofil/metagoofil-venv
source metagoofil-venv/bin/activate
pip3 install -r requirements.txt
echo -e "$VERDE Metagoofil instalado $RC"


echo -e "$AZUL3 Instalando OSFramework... $RC"
mkdir -p ~/Programs/osrframework/
cd ~/Programs/osrframework/
python3 -m venv ~/Programs/osrframework/osrframework-venv
source osrframework-venv/bin/activate
pip3 install pip==21.2
pip3 install osrframework
pip3 install 'urllib3<2'
deactivate
echo -e "$VERDE OSRFramework instalado $RC"


echo -e "$AZUL3 Instalando eo-ripper... $RC"
git clone https://github.com/Quantika14/email-osint-ripper.git ~/Programs/eo-ripper/
cd ~/Programs/eo-ripper/
python3 -m venv ~/Programs/eo-ripper/eo-ripper-venv
source eo-ripper-venv/bin/activate
pip3 install -r requeriments.txt
pip3 install requests
deactivate
echo -e "$VERDE eo-ripper instalado $RC"


echo -e "$AZUL3 Instalando Instaloader... $RC"
mkdir -p ~/Programs/instaloader/
cd ~/Programs/instaloader/
python3 -m venv ~/Programs/instaloader/instaloader-venv
source instaloader-venv/bin/activate
pip3 install instaloader
deactivate
echo -e "$VERDE Instaloader instalado $RC"


echo -e "$AZUL3 Instalando GHunt... $RC"
git clone https://github.com/mxrch/ghunt ~/Programs/GHunt
cd  ~/Programs/GHunt
python3 -m venv ~/Programs/GHunt/GHunt-venv
source GHunt-venv/bin/activate
pip3 install pipx
pipx ensurepath
pipx install ghunt
deactivate
echo -e "$VERDE GHunt instalado $RC"
echo -e "$RC" 


#echo -e "$AZUL3 Instalando Maryam... $RC"
#mkdir  ~/Programs/Maryam/
#cd ~/Programs/Maryam/
#python3 -m venv ~/Programs/Maryam/Maryam-venv
#source Maryam-venv/bin/activate
#pip install maryam
#deactivate
#echo -e "$VERDE Maryam instalado $RC"
#echo -e "$RC"


echo -e "$AZUL3 Instalando Ivre... $RC"
mkdir  ~/Programs/Ivre/
cd ~/Programs/Ivre/
python3 -m venv ~/Programs/Ivre/Ivre-venv
source Ivre-venv/bin/activate
pip install ivre
deactivate
echo -e "$VERDE Ivre instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando TorBot... $RC"
git clone https://github.com/DedSecInside/TorBot.git  ~/Programs/torbot/
cd  ~/Programs/torbot
python3 -m venv ~/Programs/torbot/torbot-venv
source torbot-venv/bin/activate
pip3 install -r requirements.txt
python3 torbot -u https://www.example.com
deactivate
echo -e "$VERDE TorBot instalado $RC"
echo -e "$RC"


echo -e "$AZUL3 Instalando ProtOSINT... $RC"
git clone https://github.com/pixelbubble/ProtOSINT.git ~/Programs/protosint/
cd  ~/Programs/protosint/
python3 -m venv ~/Programs/protosint/protosint-venv
source protosint-venv/bin/activate
pip3 install -r requirements.txt
pip3 install requests
deactivate
echo -e "$VERDE Instaloader instalado $RC"


sudo mkdir -p /usr/share/XunilLinux-menu/
cd
cd XunilLinux/scripts

sudo cp exec-in-shell /usr/share/XunilLinux-menu/
sudo chmod +x /usr/share/XunilLinux-menu/exec-in-shell
cd
mkdir -p ~/iconos

cd XunilLinux/menu/iconos
sudo cp * ~/iconos/

mkdir -p ~/.local/share/applications/
sudo cp $SCRIPT_DIR/menu/desktop/*.desktop ~/.local/share/applications/

mkdir -p ~/.config/menus/
sudo mv /etc/xdg/menus/xfce-applications.menu ~/.config/menus/xfce-applications.menuBACKUP
sudo cp $SCRIPT_DIR/menu/xfce-applications.menu ~/.config/menus/

mkdir -p ~/.local/share/desktop-directories/
cp $SCRIPT_DIR/menu/desktop-directories/*.directory ~/.local/share/desktop-directories/

sudo cp $SCRIPT_DIR/scripts/* /usr/bin/


sudo chmod +x /usr/bin/certgraph
sudo chmod +x /usr/bin/bbot
sudo chmod +x /usr/bin/cloudfail
sudo chmod +x /usr/bin/CloudScraper
sudo chmod +x /usr/bin/EyeWitness
sudo chmod +x /usr/bin/ghunt
sudo chmod +x /usr/bin/gitrecon
sudo chmod +x /usr/bin/hostintel
sudo chmod +x /usr/bin/infoga
sudo chmod +x /usr/bin/ivre
#sudo chmod +x /usr/bin/iocextract
#sudo chmod +x /usr/bin/maryam
sudo chmod +x /usr/bin/MrHolmes
sudo chmod +x /usr/bin/pagodo
sudo chmod +x /usr/bin/photon
sudo chmod +x /usr/bin/sherlock
sudo chmod +x /usr/bin/scanless
sudo chmod +x /usr/bin/startYACY
sudo chmod +x /usr/bin/stopYACY
sudo chmod +x /usr/bin/theHarvester
sudo chmod +x /usr/bin/torbot
sudo chmod +x /usr/bin/xray
sudo chmod +x /usr/bin/dnsrecon
sudo chmod +x /usr/bin/exiftool
sudo chmod +x /usr/bin/metagoofil
sudo chmod +x /usr/bin/sf
sudo chmod +x /usr/bin/sfcli
sudo chmod +x /usr/bin/osrf
sudo chmod +x /usr/bin/eo-ripper
sudo chmod +x /usr/bin/instaloader
sudo chmod +x /usr/bin/protosint



echo -e "$VERDE Menús y accesos directos creados $RC"
echo -e "$RC"


echo -e "$COLOROFF"
sudo apt autoremove -y --purge
sudo apt clean -y
sudo journalctl --vacuum-time=3d
sudo apt remove -y $(dpkg-query --show 'linux-modules-*' | cut -f1 | grep -v "$(uname -r)")
sudo find /var/log/ -type f -exec cp /dev/null {} \;
rm -rf ~/.cache/*
cat /dev/null > ~/.bash_history


echo -e "$AZUL3 A continuación se reiniciará el sistema para aplicar los últimos cambios"
echo -e "$NARANJA Pulsa intro para continuar"
read -p ""
systemctl reboot
