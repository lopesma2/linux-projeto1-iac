#!/bin/bash

echo " [ 1 ] Criando os duretórios"

mkdir /adm
mkdir /publico
mkdir /ven
mkdir /sec

echo "[ 2 ] Criando os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "[ 3 ] Criando os usuários ADM"

useradd carlos -m -s /bin/bash -p Senha123 -G GRP_ADM
useradd maria -m -s /bin/bash -p Senha123 -G GRP_ADM
useradd joao -m -s /bin/bash -p Senha123 -G GRP_ADM 

echo "[ 4 ] Criando os usuários VEN"

useradd debora -m -s /bin/bash -p Senha123 -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p Senha123 -G GRP_VEN
useradd roberto -m -s /bin/bash -p Senha123 -G GRP_VEN

echo "[ 5 ] Criando os usuários SEC"
useradd josefina -m -s /bin/bash -p Senha123 -G GRP_SEC
useradd amanda -m -s /bin/bash -p Senha123 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p Senha123 -G GRP_SEC


echo "[ 6 ] Permissões nos diretórios"

echo "  -- [ 6.1 ] Permissões de owner nos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "  -- [ 6.2 ] Permissões de read/write nos diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "[ 7 ] Fim"



