#! /bin/bash

apt-get install proftpd -y
if [ "$?" != "0" ]; then echo "Error instlacion"; exit 1; fi
cp /proftpd.conf /etc/proftpd/
if [ "$?" != "0" ]; then echo "Copiadno Archivo de configuracion "; exit 1; fi
addgroup ftp
if [ "$?" != "0" ]; then echo "Creando Grupo de trabajo"; exit 1; fi
adduser ftp ftp
if [ "$?" != "0" ]; then echo "Creando usuario de trabajo y agregando a grupo"; exit 1; fi
mkdir /home/ftp
if [ "$?" != "0" ]; then echo "Creando directorio ftp"; exit 1; fi
mkdir /home/ftp/up
if [ "$?" != "0" ]; then echo "Creando directorio de subida"; exit 1; fi
mkdir /home/ftp/down
if [ "$?" != "0" ]; then echo "Creadno directorio de bajada"; exit 1; fi
cd /home/ftp
if [ "$?" != "0" ]; then echo "Moviendoce a carpeta de trabajo"; exit 1; fi
chown ftp:ftp down
if [ "$?" != "0" ]; then echo "Haciendo propietario directorio bajada"; exit 1; fi
chown ftp:ftp up
if [ "$?" != "0" ]; then echo "Haciendo propietario directorio subida"; exit 1; fi
