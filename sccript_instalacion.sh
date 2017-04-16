#! /bin/bash

apt-get install proftpd -y
addgroup ftp
adduser ftp ftp
mkdir /home/ftp
mkdir /home/ftp/up
mkdir /home/ftp/down
cd /home/ftp
chown ftp:ftp down
chown ftp:ftp up
