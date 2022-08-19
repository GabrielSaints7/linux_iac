#!/bin/bash

echo "Criando usuarios"
useradd guest10 -c "Usuario" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest10 -e

useradd guest11 -c "Usuario" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest11 -e

useradd guest12 -c "Usuario" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest12 -e

useradd guest13 -c "Usuario" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest13 -e

echo "Finalizado !!!"
