#!/bin/bash

echo "Criando os Diterórios..."
mkdir /publico
mkdir /adm
mkdir /ven 
mkdir /sec

echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM && echo "carlos:1234" | chpasswd && passwd -e carlos
useradd maria -m -s /bin/bash -G GRP_ADM && echo "maria:1234" | chpasswd && passwd -e maria
useradd joao -m -s /bin/bash -G GRP_ADM && echo "joao:1234" | chpasswd && passwd -e joao

useradd debora -m -s /bin/bash -G GRP_VEN && echo "carlos:1234" | chpasswd && passwd -e carlos
useradd sebastiana -m -s /bin/bash -G GRP_VEN && echo "sebastiana:1234" | chpasswd && passwd -e sebastiana
useradd roberto -m -s /bin/bash -G GRP_VEN && echo "roberto:1234" | chpasswd && passwd -e roberto

useradd josefina -m -s /bin/bash -G GRP_SEC && echo "josefina:1234" | chpasswd && passwd -e josefina
useradd amanda -m -s /bin/bash -G GRP_SEC && echo "amanda:1234" | chpasswd && passwd -e amanda
useradd rogerio -m -s /bin/bash -G GRP_SEC && echo "rogerio:1234" | chpasswd && passwd -e rogerio

echo "Colocando permissões nos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
