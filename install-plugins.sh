#!/usr/bin/env bash

set -e

PLUGINS_FILE="$1"

echo "Instalando plugins desde $PLUGINS_FILE"

if [ -f "$PLUGINS_FILE" ]; then
    jenkins-plugin-cli --plugin-file "$PLUGINS_FILE"
else
    echo "Archivo de plugins no encontrado: $PLUGINS_FILE"
    exit 1
fi

echo "Finalizado"