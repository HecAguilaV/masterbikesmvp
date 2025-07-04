#!/bin/zsh
# Script para reiniciar todos los servicios de MasterBikes y el frontend
# Uso: ./restart_all.sh

# Cierra todas las terminales abiertas por run_all.sh (solo Terminal.app)
echo "Cerrando terminales de microservicios..."
osascript -e 'tell application "Terminal" to close (every window whose name contains "spring-boot:run")' 2>/dev/null
sleep 2

echo "Matando procesos Java de microservicios..."
for SERVICIO in api-gateway auth-service catalogo-service inventario-service sucursal-service venta-service; do
  pkill -f "$SERVICIO.*spring-boot:run" 2>/dev/null
done

# Matar servidor Python del frontend
pkill -f "python3 -m http.server 8080" 2>/dev/null
sleep 2

echo "Reiniciando todos los servicios..."
./run_all.sh
