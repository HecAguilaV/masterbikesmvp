# Estructura general del repositorio

```
masterbikes/
├── README.md
├── run_all.sh
├── restart_all.sh
├── stop_all.sh
├── stop_all_services.sh
├── autorizar_scripts.sh
├── api-gateway/
│   ├── pom.xml
│   ├── readme.md
│   └── ...
├── auth-service/
│   ├── pom.xml
│   ├── README.md
│   └── ...
├── catalogo-service/
│   ├── pom.xml
│   ├── readme.md
│   └── ...
├── inventario-service/
│   ├── pom.xml
│   ├── readme.md
│   └── ...
├── sucursal-service/
│   ├── pom.xml
│   ├── readme.md
│   └── ...
├── venta-service/
│   ├── pom.xml
│   ├── readme.md
│   └── ...
├── frontend/
│   ├── index.html
│   ├── readme.md
│   ├── css/
│   ├── js/
│   ├── images/
│   ├── pages/
│   └── ...
└── frontend_test/
    └── index.html
```

# MasterBikes - Arquitectura, Estado Actual y MVP

Este repositorio contiene el sistema MasterBikes, una plataforma de venta, arriendo y personalización de bicicletas, basada en microservicios Java (Spring Boot) y un frontend estático moderno. Aquí encontrarás la visión, el estado actual, los endpoints, la lógica de negocio y los objetivos del MVP.

## Arquitectura General

- **Frontend**: HTML/CSS/JS puro, Bootstrap, accesible y responsivo. Consume APIs REST de los microservicios vía API Gateway.
- **API Gateway**: Spring Cloud Gateway, enruta y centraliza la seguridad y CORS. Puerto: `8080`.
- **Microservicios**:
  - `catalogo-service` (8082): Catálogo de bicicletas, componentes y accesorios.
  - `inventario-service` (8084): Stock y movimientos de inventario.
  - `sucursal-service` (8083/8084*): Gestión de sucursales y empleados.
  - `venta-service` (8085): Ventas y facturación.
  - `auth-service` (por definir): Autenticación y usuarios (en desarrollo).
- **Base de datos**: MySQL local, una por microservicio.

## Estado Actual (julio 2025)

- Frontend funcional, accesible, con navbar y barra de contacto estandarizadas, integración de sesión y carrito, página de cliente y catálogo dinámico.
- API Gateway enruta correctamente a los microservicios, CORS configurado.
- Microservicios de catálogo, inventario, sucursal y venta implementados y comunicándose vía REST.
- Scripts bash para levantar, reiniciar y detener todos los servicios y frontend.
- Eliminados todos los captchas y mejorada la accesibilidad.
- Documentación y endpoints en proceso de estandarización.

## Objetivo MVP

- Flujo completo: registro/login, visualización de catálogo, filtrado, carrito, compra, generación de venta/factura, consulta de stock y sucursales.
- Integración robusta frontend-backend-DB.
- Accesibilidad AA, experiencia de usuario profesional.
- Documentación clara y pruebas funcionales.

## Endpoints Principales

### API Gateway (http://localhost:8080)
- `/api/catalogo/**` → Catálogo
- `/api/inventario/**` → Inventario
- `/api/sucursal/**` → Sucursales
- `/api/venta/**` → Ventas

### Catálogo (`catalogo-service`, puerto 8082)
- `GET /api/v1/catalogo/bicicletas` — Listar bicicletas
- `GET /api/v1/catalogo/componentes` — Listar componentes
- `GET /api/v1/catalogo/accesorios` — Listar accesorios
- `POST /api/v1/catalogo/bicicletas` — Crear bicicleta personalizada

### Inventario (`inventario-service`, puerto 8084)
- `GET /api/v1/inventarios` — Listar inventario
- `POST /api/v1/movimientosinventario` — Registrar movimiento
- `GET /api/v1/reportesucursal` — Reporte por sucursal

### Sucursales (`sucursal-service`, puerto 8083/8084*)
- `GET /api/v1/sucursales` — Listar sucursales
- `POST /api/v1/sucursales` — Crear sucursal
- `GET /api/v1/empleados` — Listar empleados

### Ventas (`venta-service`, puerto 8085)
- `GET /api/v1/ventas` — Listar ventas
- `POST /api/v1/ventas` — Registrar venta
- `GET /api/v1/facturas` — Listar facturas

### Autenticación (futuro)
- `POST /api/v1/auth/login` — Login
- `POST /api/v1/auth/register` — Registro

## Lógica de Negocio Clave
- **Catálogo**: Gestión y filtrado de productos, personalización de bicicletas.
- **Inventario**: Control de stock, movimientos automáticos al vender.
- **Sucursal**: CRUD de sucursales y empleados.
- **Venta**: Orquestación de venta, generación de factura, actualización de inventario.
- **Frontend**: Experiencia de usuario, accesibilidad, integración con APIs, gestión de sesión y carrito.

## Próximos Pasos
- Finalizar endpoints de autenticación y perfil de usuario.
- Mejorar fallback de catálogo si la API está caída.
- Completar documentación de endpoints y ejemplos de requests/responses.
- Pruebas funcionales end-to-end.
- Mejorar accesibilidad en todas las páginas.

## Scripts de Automatización
- `run_all.sh` — Levanta todos los servicios y frontend.
- `restart_all.sh` — Reinicia todos los servicios.
- `stop_all.sh` / `stop_all_services.sh` — Detiene todos los servicios.
- `autorizar_scripts.sh` — Da permisos de ejecución a los scripts.

## Contacto y soporte
- Email: contacto@masterbikes.cl
- Teléfono: +56 2 2345 6789

---
*Verifica los puertos en los archivos `application.properties` de cada microservicio. Puede haber diferencias según entorno.*
