#!/bin/bash

cd "$(dirname "$0")/frontend/images" || exit 1

# Crear subcarpetas si no existen
mkdir -p bicicletas componentes accesorios logos iconos

# Función para limpiar nombres
limpiar_nombre() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '_' | tr -cd '[:alnum:]_.-' | sed 's/-/_/g'
}

# Mover imágenes de bicicletas (ejemplo: archivos que empiezan con ba o bm)
for img in ba*.jpg ba*.png ba*.webp bm*.jpg bm*.png bm*.webp; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "bicicletas/$nuevo"
done

# Mover logos
for img in logo*.*; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "logos/$nuevo"
done

# Mover iconos
for img in icon*.*; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "iconos/$nuevo"
done

# Mover componentes (ejemplo: archivos que contienen 'component' en el nombre)
for img in *component*.*; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "componentes/$nuevo"
done

# Mover accesorios (ejemplo: archivos que contienen 'accesorio' en el nombre)
for img in *accesorio*.*; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "accesorios/$nuevo"
done

# Mover imágenes de redes sociales
for img in facebook.* instagram.* youtube.*; do
  [ -e "$img" ] || continue
  nuevo=$(limpiar_nombre "$img")
  mv "$img" "logos/$nuevo"
done

echo "Imágenes movidas y renombradas automáticamente por tipo. Revisa las carpetas y ajusta manualmente si alguna imagen no fue clasificada correctamente."