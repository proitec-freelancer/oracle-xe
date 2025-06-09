#!/bin/bash

# Nombre del contenedor
CONTAINER_NAME="oracle-xe"

# Ruta del Alert Log dentro del contenedor
ALERT_LOG="/opt/oracle/diag/rdbms/xe/XE/trace/alert_XE.log"

# Comando para seguir el log en tiempo real
echo "Conectando al contenedor $CONTAINER_NAME y monitoreando el Alert Log..."
docker exec -it $CONTAINER_NAME tail -f $ALERT_LOG
