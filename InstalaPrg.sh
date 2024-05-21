#!/bin/bash
#Luis Fernández


# Con \e[ comienzas la secuencia
# x;y;zm definen el formato, color de texto y color de fondo.
# \e[m define el final de la secuencia.

# Así, la definición de colores se corresponde con la siguiente tabla,

# Texto	Color      		texto		Color fondo
# 0 – normal		30 – Negro		40 – Negro
# 1 – negrita		31 – Rojo		41 – Rojo
# 4 – subrayado		32 – Verde		42 – Verde
#					33 – Amarillo	43 – Amarillo
#					34 – Azul		44 – Azul
#					35 – Púrpura	45 – Púrpura
#					36 – Turquesa	46 – Turquesa
#					37 – Blanco		47 – Blanco

# Ahora ya es cuestión que pruebes todas las combinaciones que tu consideres, para personalizar y colorear la línea de comandos. Una observación, cada vez que comienzas una secuencia, utilizando \e[, sobrescribes el formato anterior. Y cuando terminas con \e[m, simplemente vuelves al estado por defecto. En mi caso, ese estado por defecto es texto en blanco y fondo negro. Y el formato de texto es normal.

cabecera(){
clear
echo ""
echo "
	╔═════════════════════════════════════════════════════╗
	║           Script instalación Osint Xunil            ║
	║        Trabajo Fin de Master Ciberseguridad         ║
	║          Escrito por \e[4;34;40mLuis Fernández\e[m                 ║
	╚═════════════════════════════════════════════════════╝"
}

menu(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40mELIGE EL TIPO DE HERRAMIENTA QUE NECESITAS INSTALAR\e[m  │
	│ \e[1;31;40m---------------------------------------------------\e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Analisis de Redes Sociales                       │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Analisis de Dominios                             │
	├───┼──────────────────────────────────────────────────┤
	│ 3 │ Analisis de Datos Personales                     │
	├───┼──────────────────────────────────────────────────┤
	│ 4 │ Analisis de Datos Corporativos                   │
	├───┼──────────────────────────────────────────────────┤
	│ 5 │ Herramientas para el analisis de Datos           │
	├───┼──────────────────────────────────────────────────┤
	│ 6 │ Utilidades                                       │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo ""
echo -n "	[#] Seleccione una Opción: "
#read opc
}

redes(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m     HERRAMIENTA DE ANALISIS DE REDES SOCIALES     \e[m  │
	│ \e[1;31;40m     -----------------------------------------     \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar Trape                                   │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc1
}

recursos(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m        HERRAMIENTA DE ANALISIS DE DOMINIOS        \e[m  │
	│ \e[1;31;40m        -----------------------------------        \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar Dmitry                                  │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Instalar DNSRecon                                │
	├───┼──────────────────────────────────────────────────┤
	│ 3 │ Instalar IpToDomain                              │
	├───┼──────────────────────────────────────────────────┤
	│ 4 │ Instalar Knock                                   │
	├───┼──────────────────────────────────────────────────┤
	│ 5 │ Instalar Puncia AI                               │
	├───┼──────────────────────────────────────────────────┤
	│ 6 │ Instalar SubBrute                                │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc2
}

personas(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m    HERRAMIENTA DE ANALISIS DE DATOS PERSONALES    \e[m  │
	│ \e[1;31;40m    -------------------------------------------    \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar MetaGoofil                              │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Instalar Recon-NG                                │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc3
}

coorps(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m   HERRAMIENTA DE ANALISIS DE DATOS CORPORATIVOS   \e[m  │
	│ \e[1;31;40m   ---------------------------------------------   \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar EyeWitness                              │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Instalar Maltego                                 │
	├───┼──────────────────────────────────────────────────┤
	│ 3 │ Instalar TheHarvester                            │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc4
}
util(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m  Herramientas para el analisis de Datos           \e[m  │
	│ \e[1;31;40m  -------------------------------                  \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar Httrack - Clonar pagina WEB             │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Instalar ExifTool                                │
	├───┼──────────────────────────────────────────────────┤
	│ 3 │ Instalar MediaInfo                               │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc5
}
otras(){
echo "
	┌──────────────────────────────────────────────────────┐
	│ \e[1;31;40m               UTILIDADES                          \e[m  │
	│ \e[1;31;40m               ----------                          \e[m  │
	├───┬──────────────────────────────────────────────────┤
	│ 1 │ Instalar Telegrams                               │
	├───┼──────────────────────────────────────────────────┤
	│ 2 │ Instalar KeepassXC                               │
	├───┼──────────────────────────────────────────────────┤
	│ 3 │ Instalar Brave                                   │
	├───┼──────────────────────────────────────────────────┤
	│ 4 │ Instalar VLC                                     │
	├───┼──────────────────────────────────────────────────┤
	│ 0 │ \e[1;31;40mSalir del programa\e[m                               │
	└───┴──────────────────────────────────────────────────┘"
echo -n "
	[#] (Tu eleccion?): "
#read opc6
}

cabecera
menu
#Pongo valor opc a 9 que no haya error
opc=9
#opc=#

until [ $opc -eq 0 ];
do
    case $opc in
        # Opción 1 - REDES
        1) clear
		cabecera
		redes
    
        # Inicializar la variable opc1
        opc1=9

		until [ $opc1 -eq 0 ];
		do
			case $opc1 in
				1)echo ""
				sh ./herramientas/redes/Instalar_trape.sh
				cabecera
				redes
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				redes
				;;
			esac
		read opc1
		done
        ######################################################
        # Salida de esta opcion
        # Se vuelve a poner la cabecera y el menu principal
        # y se vuelve a incializar las variables
        ######################################################
		cabecera
        menu
        opc=9
        opc1=9
        ;;
		
        2) clear
		cabecera
		recursos
        opc2=9
		until [ $opc2 -eq 0 ];
		do
			case $opc2 in
				1)echo ""
				sh ./herramientas/recursos/Instalar_dmitry.sh
				cabecera
				recursos
				;;
				2)echo ""
				sh ./herramientas/recursos/Instalar_dnsrecon.sh
				cabecera
				recursos
				;;
				3)echo ""
				sh ./herramientas/recursos/Instalar_iptodomain.sh
				cabecera
				recursos
				;;
				4)echo ""
				sh ./herramientas/recursos/Instalar_knock.sh
				cabecera
				recursos
				;;
				5)echo ""
				sh ./herramientas/recursos/Instalar_puncia.sh
				cabecera
				recursos
				;;
				6)echo ""
				sh ./herramientas/recursos/Instalar_subbrute.sh
				cabecera
				recursos
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				recursos
				;;
			esac
		read opc2
		done
		cabecera
        menu
        opc=9
        opc2=9
        ;;
		
        3) clear
		cabecera
		personas
        opc3=9
		until [ $opc3 -eq 0 ];
		do
			case $opc3 in
				1)echo ""
				sh ./herramientas/personas/Instalar_metagoofil.sh
				cabecera
				personas
				;;
				2)echo ""
				sh ./herramientas/personas/Instalar_reconng.sh
				cabecera
				personas
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				personas
				;;
			esac
		read opc3
		done
        opc3=9
        opc=9
		cabecera
        menu
        ;;
		
        4) clear
		cabecera
		coorps
        opc4=9
		until [ $opc4 -eq 0 ];
		do
			case $opc4 in
				1)echo ""
				sh ./herramientas/coorps/Instalar_eyewitness.sh
				cabecera
				coorps
				;;
				2)echo ""
				sh ./herramientas/coorps/Instalar_maltego.sh
				cabecera
				coorps
				;;
				3)echo ""
				sh ./herramientas/coorps/Instalar_theharvester.sh
				#cabecera
				#menu
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				coorps
				;;
			esac
		read opc4
		done
        opc4=9
        opc=9
		cabecera
        menu
        ;;

		5) clear
		cabecera
		util
        opc5=9
		until [ $opc5 -eq 0 ];
		do
			case $opc5 in
				1)echo ""
				sh ./herramientas/otras/Instalar_httrack.sh
				cabecera
				util
				;;
				2)echo ""
				sh ./herramientas/otras/Instalar_exiftool.sh
				cabecera
				util
				;;
				3)echo ""
				sh ./herramientas/otras/Instalar_mediainfo.sh
				cabecera
				util
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				util
				;;
			esac
		read opc5
		done
        opc5=9
        opc=9
		cabecera
        menu
        ;;

        6) clear
		cabecera
		otras
        opc6=9
		until [ $opc6 -eq 0 ];
		do
			case $opc6 in
				1)echo ""
				sh ./herramientas/otras/Instalar_Telegram.sh
				cabecera
				otras
				;;
				2)echo ""
				sh ./herramientas/otras/Instalar_keepassxc.sh
				cabecera
				otras
				;;
				3)echo ""
				sh ./herramientas/otras/Instalar_Brave.sh
				cabecera
				otras
				;;
				4)echo ""
				sh ./herramientas/otras/Instalar_vlc.sh
				cabecera
				otras
				;;
				*) echo "\e[1;31;40m... Espere por favor ...\e[m"
				sleep 3
				cabecera
				otras
				;;
			esac
		read opc6
		done
        opc6=9
        opc=9
		cabecera
        menu
        ;;

		*) echo "\e[1;31;40m... Espere por favor ...\e[m"
        sleep 3
		cabecera
        menu
        ;;
    esac
read opc
done
