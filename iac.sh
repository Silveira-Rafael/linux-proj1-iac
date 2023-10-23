#!/bin/bash

echo "Criando diretórios iniciais..."

mkdir /publico
mkdir /adm
mkdir /ti
mkdir /mark

echo "Criando grupos de usuários..."

groupadd ADM
groupadd TI
groupadd MARK

echo "Criando usuários e adicionando aos grupos..."

useradd rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G ADM
useradd tiago -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G TI
useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt Senha) -G MARK

echo "Alterando permissões dos diretórios..."

chown root:ADM /adm
chown root:TI /ti
chown root:MARK /mark

chmod 770 /adm
chmod 770 /ti
chmod 770 /mark
chmod 777 /publico

echo "Procedimento finalizado!"
