#!/bin/bash

# Diretórios a serem criados
directories=(
    "$(pwd)/glpi_db_log"
    "$(pwd)/glpi_db_lib"
    "$(pwd)/glpi_db_backup"
)

# Apagar diretórios
for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        rm -rf "$dir"
        echo "Diretório $dir apagado."
    else
        echo "Diretório $dir não existe."
    fi
done
