#!/bin/bash

echo "Criando Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usários"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Alocando os grupos para os determinados diretorios"
chown root: GRP_ADM /adm
chown root: GRP_VEN /ven
chown root: GRP_SEC /sec

echo "As permissoes que cada grupo vai poder em determinado diretorio"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/ 

echo "Fim..."

