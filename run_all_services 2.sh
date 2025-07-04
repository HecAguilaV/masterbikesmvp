#!/bin/zsh
# Script para levantar todos los servicios de MasterBikes y el frontend
# Uso: ./run_all.sh

# Función para iniciar un servicio Java en una nueva terminal
echo "Iniciando microservicios Java..."

SERVICIOS=(api-gateway auth-service catalogo-service inventario-service sucursal-service venta-service)

for SERVICIO in $SERVICIOS; do
  if [ -d "$SERVICIO" ]; then
    echo "Levantando $SERVICIO..."
    # Abre una nueva terminal para cada servicio (macOS Terminal.app)
    osascript \
      -e 'tell application "Terminal" to do script "cd '$(pwd)/$SERVICIO' && ./mvnw spring-boot:run"'
  else
    echo "Directorio $SERVICIO no encontrado, se omite."
  fi
done

echo "Levantando frontend con servidor local en el puerto 8080..."
cd frontend
python3 -m http.server 8080 &
cd ..

echo "Todos los servicios están iniciándose. Accede al frontend en http://localhost:8080"
