#!/bin/zsh
# Script para detener todos los servicios de MasterBikes y el frontend
# Uso: ./stop_all.sh

echo "Cerrando terminales de microservicios..."
osascript -e 'tell application "Terminal" to close (every window whose name contains "spring-boot:run")' 2>/dev/null
sleep 2

echo "Matando procesos Java de microservicios..."
for SERVICIO in api-gateway auth-service catalogo-service inventario-service sucursal-service venta-service; do
  pkill -f "$SERVICIO.*spring-boot:run" 2>/dev/null
done

# Matar servidor Python del frontend
pkill -f "python3 -m http.server 8080" 2>/dev/null

echo "Todos los servicios han sido detenidos."
