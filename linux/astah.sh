#!/bin/bash

#########################################
### SCRIPT CRIADO POR BRUNO KAMMERS ###
### EM 28/11/2017 ###
#########################################


## VAR
LINK="http://cdn.change-vision.com/files/astah-community-7_2_0-1ff236.zip"
WORKDIR="/tmp"
DIR="/opt"
ARQ="astah.zip"
USER=`users`
ATALHO="/home/$USER/Desktop/astah.desktop"
JAVA=`java -version 2> /dev/null ; echo $?`

clear
if test `whoami` != root
then
echo -e "\n\n\n\n A T E N Ç Ã O"
echo -e "\n\n Você precisa ser ROOT para executar este script.\n\n\n"
exit 1
fi

echo -e "\n\n\n ..:: Bem vindo ao instalador do Astah Community ::..\n\n\n"
sleep 3

echo -e "\n Verificando o JAVA...\n"
if [ $JAVA -eq 0 ]
	then
		echo -e " JAVA encontrado!\n"
	else
		echo -e " JAVA nao encontrado..."
		echo -e " Instalando o JAVA!\n"
		apt-get install openjdk-8-jre -y
fi

echo -e "\n Baixando o fonte...\n"
wget -qcO $WORKDIR/$ARQ $LINK

echo -e "\n Descompactando...\n"
unzip -qu $WORKDIR/$ARQ -d $DIR
mv $DIR/astah_community $DIR/astah

echo -e "\n Criando lançador na área de trabalho...\n"
convert $DIR/astah/astah.ico $DIR/astah/astah.png
chmod +x $DIR/astah/astah
touch $ATALHO
echo "[Desktop Entry]" > $ATALHO
echo "Name=Astah" >> $ATALHO
echo "Type=Application" >> $ATALHO
echo "Exec=$DIR/astah/astah -nojvchk" >> $ATALHO
echo "Icon=$DIR/astah/astah-5.png" >> $ATALHO
echo "StartupNotify=false" >> $ATALHO
echo "Terminal=false" >> $ATALHO
chmod 555 $ATALHO
chown $USER.$USER $ATALHO


echo -e "\n Limpando arquivos desnecessários...\n"
rm -rf $WORKDIR/$ARQ

clear
echo -e "\n FINALIZADO !\n\n"
echo -e " Veja o lançador "Astah" em sua área de trabalho\n"
echo -e " DIVIRTA-SE! :)\n\n"
exit 0