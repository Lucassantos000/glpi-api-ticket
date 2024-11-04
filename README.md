# Projeto para criação de Tickets via API GLPI

### Para iniciar:

#### Comando para subir os serviços:
```bash
docker compose up -d
```

#### Web:
`http://localhost:porta/`

#### Console:
```bash
docker exec -it glpi-10 /bin/bash

glpi-console glpi:database:install -L pt_BR -Hdb-glpi-10 -dglpi -uglpi -pGLP1_MySQL@10 --no-telemetry --force -n && mv /usr/share/glpi/install /usr/share/glpi/install_ori && rm -rf /var/log/glpi/* && chown -R apache:apache /usr/share/glpi/marketplace/ && chown -R apache:apache /var/lib/glpi/files && chown -R apache:apache /var/log/glpi && chown -R apache:apache /var/lib/glpi/files/data-documents

```