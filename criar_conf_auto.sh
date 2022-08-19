#!/bin/bash

echo "Criando configuracoes de usuarios padroes para o sistema"
echo " "

echo "Criando diretorios..."
	mkdir publico adm ven sec
echo "Os diretorios PUBLICO, ADM, VEN e SEC foram criados."
echo " "

echo "Criando grupos..."

	groupadd -f publico && chmod 777 publico
	groupadd -f grp_adm && chown root:grp_adm /adm && chmod 770 /adm
	groupadd -f grp_ven && chown root:grp_ven /ven && chmod 770 /ven
	groupadd -f grp_sec && chown root:grp_sec /sec && chmod 770 /sec

echo "Os grupos foram criados..."
echo " "

echo "Criando usuarios e gerenciando permissoes..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_adm && passwd -e carlos
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_adm && passwd -e maria
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_adm && passwd -e joao

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_ven && passwd -e debora
useradd suzana -c "Suzana" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_ven && passwd -e suzana
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_ven && passwd -e roberto

useradd jose -c "Jose" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_sec && passwd -e jose
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_sec && passwd -e amanda
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd 123) -G publico,grp_sec && passwd -e rogerio


echo "Os usuarios foram criados e respectivas permissoes foram dadas"
