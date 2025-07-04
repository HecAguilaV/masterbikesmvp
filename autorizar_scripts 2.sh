#!/bin/zsh
# Script para autorizar (dar permisos de ejecución) a todos los scripts de gestión
# Uso: ./autorizar_scripts.sh

chmod +x run_all_services.sh restart_all_services.sh stop_all_services.sh autorizar_scripts.sh

echo "Permisos de ejecución otorgados a los scripts: run_all_services.sh, restart_all_services.sh, stop_all_services.sh, autorizar_scripts.sh"
