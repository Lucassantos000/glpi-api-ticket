#!/bin/bash

# Diretórios a serem criados
directories=(
    "$(pwd)/glpi_db_log"
    "$(pwd)/glpi_db_lib"
    "$(pwd)/glpi_db_backup"
)

# Criar diretórios
for dir in "${directories[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        echo "Diretório $dir criado."
    else
        echo "Diretório $dir já existe."
    fi
done

# Alterar o dono da pasta pas mysql (percona)
sudo chown -R 1001:1001 "$(pwd )/glpi_db_log"
sudo chown -R 1001:1001 "$(pwd )/glpi_db_lib"
sudo chown -R 1001:1001 "$(pwd )/glpi_db_backup"



