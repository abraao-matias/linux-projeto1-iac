#!/bin/bash

echo "criando diretorios"

mkdir -p /proj_linux/adm
mkdir -p /proj_linux/ven
mkdir -p /proj_linux/sec
mkdir -p /proj_linux/publico


echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios e adicionando nos grupos"

useradd carlos -c "Carlos setor ADM" -s /bin/bash -m -p "$(openssl passwd -1 123)" -G GRP_ADM
useradd debora -c "Debora setor VEN" -s /bin/bash -m -p "$(openssl passwd -1 123)" -G GRP_VEN
useradd josefina -c "Josefina setor SEC" -s /bin/bash -m -p "$(openssl passwd -1 123)" -G GRP_SEC

echo "Mudando permissão dos diretorios"

chown root:GRP_ADM /proj_linux/adm
chown root:GRP_VEN /proj_linux/ven
chown root:GRP_SEC /proj_linux/sec

chmod 770 /proj_linux/adm
chmod 770 /proj_linux/ven
chmod 770 /proj_linux/sec
chmod 755 /proj_linux/publico


echo "Scrip executado com sucesso!!!"

