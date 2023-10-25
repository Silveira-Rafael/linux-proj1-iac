#!/bin/bash

echo "Atualizando servidor"

apt-get update && apt-get ugrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos"
cd linux-site-dio-main
cp -R * /var/www/html

