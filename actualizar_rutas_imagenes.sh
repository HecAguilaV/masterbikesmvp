#!/bin/bash

cd "$(dirname "$0")/frontend" || exit 1

# Reemplazos para bicicletas
find . -type f \( -name "*.html" -o -name "*.js" \) -exec sed -i '' \
  -e 's#images/ba2732_halley_27_verde_2024-01_1.jpg#images/bicicletas/bici_halley_verde_2024_01.jpg#g' \
  -e 's#images/ba2732_halley_27_verde_2024-07_1.jpg#images/bicicletas/bici_halley_verde_2024_07.jpg#g' \
  -e 's#images/ba2732_halley_27_verde_2024-08_1.jpg#images/bicicletas/bici_halley_verde_2024_08.jpg#g' \
  -e 's#images/ba2764-aura-6-27_5-lila-2021-01.jpg#images/bicicletas/bici_aura6_lila_2021_01.jpg#g' \
  -e 's#images/ba2764-aura-6-27_5-lila-2021-04.jpg#images/bicicletas/bici_aura6_lila_2021_04.jpg#g' \
  -e 's#images/ba2764-aura-6-27_5-lila-2021-05.jpg#images/bicicletas/bici_aura6_lila_2021_05.jpg#g' \
  -e 's#images/ba2764-aura-6-27_5-lila-2021-06_2.jpg#images/bicicletas/bici_aura6_lila_2021_06.jpg#g' \
  -e 's#images/ba2764-aura-6-27_5-lila-2021-09.jpg#images/bicicletas/bici_aura6_lila_2021_09.jpg#g' \
  -e 's#images/ba2951-merak-29-azul-2025-01-2.png#images/bicicletas/bici_merak_azul_2025_01.png#g' \
  -e 's#images/ba2951-merak-29-rojo-2025-01-2.png#images/bicicletas/bici_merak_rojo_2025_01.png#g' \
  -e 's#images/ba2951_merak_29_azul_2025_07_2.jpg#images/bicicletas/bici_merak_azul_2025_07.jpg#g' \
  -e 's#images/ba2951_merak_29_azul_2025_09_2.jpg#images/bicicletas/bici_merak_azul_2025_09.jpg#g' \
  -e 's#images/ba2951_merak_29_negro_2025_12_2_1.jpg#images/bicicletas/bici_merak_negro_2025_12_1.jpg#g' \
  -e 's#images/ba2951_merak_29_negro_2025_12_2_1_1.jpg#images/bicicletas/bici_merak_negro_2025_12_2.jpg#g' \
  -e 's#images/ba2951_merak_29_rojo_2025_03_3.jpg#images/bicicletas/bici_merak_rojo_2025_03.jpg#g' \
  -e 's#images/ba2951_merak_29_rojo_2025_09_3.jpg#images/bicicletas/bici_merak_rojo_2025_09.jpg#g' \
  {} +

# Reemplazos para logos
find . -type f \( -name "*.html" -o -name "*.js" \) -exec sed -i '' \
  -e 's#images/logo.svg#images/logos/logo.svg#g' \
  -e 's#images/logo-linkedin_1.png#images/logos/logo_linkedin.png#g' \
  {} +

# Reemplazos para iconos
find . -type f \( -name "*.html" -o -name "*.js" \) -exec sed -i '' \
  -e 's#images/icon-visa.png#images/iconos/icon_visa.png#g' \
  -e 's#images/icon-webpay.png#images/iconos/icon_webpay.png#g' \
  -e 's#images/icon-cabal.png#images/iconos/icon_cabal.png#g' \
  -e 's#images/icon-magna.png#images/iconos/icon_magna.png#g' \
  -e 's#images/icon-master.png#images/iconos/icon_master.png#g' \
  {} +

# Agrega aquí más líneas -e para otros reemplazos según tus imágenes y carpetas

echo "Rutas de imágenes actualizadas en todos los archivos HTML y JS."