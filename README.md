<div align="center">
  <img src="frontend/images/logos/logo.svg" alt="MasterBikes" width="150"/>
  <h1>🚴‍♂️ MasterBikes</h1>
  <h3>Plataforma de venta, arriendo y personalización de bicicletas</h3>
  <p><b>Microservicios Java · Frontend moderno · Accesibilidad · Sello MasterBikes</b></p>
</div>

---


## 📁 Estructura general del repositorio

> **Estructura limpia y profesional, lista para producción MVP.**

```text
masterbikes/
├── README.md
├── run_all.sh
├── restart_all.sh
├── stop_all.sh
├── stop_all_services.sh
├── autorizar_scripts.sh
├── api-gateway/
├── auth-service/
├── catalogo-service/
├── inventario-service/
├── sucursal-service/
├── venta-service/
├── frontend/
└── frontend_test/
```


## 🚦 Visión y propósito


MasterBikes es una plataforma integral para amantes del ciclismo, tiendas y talleres. Permite explorar, personalizar y comprar bicicletas, gestionar inventario y sucursales, y administrar ventas, todo con una experiencia moderna, accesible y profesional.

El frontend ha sido estandarizado, con un panel de administración único, seguro y atractivo, en proceso de integración con el backend para la gestión de usuarios e inventario/productos. El acceso está protegido por roles y la estructura del proyecto ha sido simplificada, eliminando duplicados y dejando solo lo esencial para un MVP robusto y funcional.

---


## 🏗️ Arquitectura General

- **Frontend**: HTML/CSS/JS puro, Bootstrap, accesible y responsivo. Consume APIs REST de los microservicios vía API Gateway. Incluye un panel de administración moderno y seguro, con tabs para usuarios y productos, modales Bootstrap y protección de acceso por roles.
- **API Gateway**: Spring Cloud Gateway, enruta y centraliza la seguridad y CORS. Puerto: `8080`.
- **Microservicios**:
  - `catalogo-service` (8082): Catálogo de bicicletas, componentes y accesorios.
  - `inventario-service` (8084): Stock y movimientos de inventario.
  - `sucursal-service` (8083/8084*): Gestión de sucursales y empleados.
  - `venta-service` (8085): Ventas y facturación.
  - `auth-service`: Autenticación y usuarios (en desarrollo, endpoints en proceso de integración real).
- **Base de datos**: MySQL local, una por microservicio.

---



## 📊 Estado Actual (julio 2025)

- Frontend moderno, accesible y funcional, con navbar y barra de contacto estandarizadas, integración de sesión y carrito, página de cliente y catálogo dinámico.
- **Panel de administración profesional y unificado**: una sola página (`admin.html`) con tabs para usuarios y productos, modales Bootstrap, protección de acceso solo para admin y lógica lista para conectar con backend real.
- Lógica de login por roles (admin/cliente), protección de páginas y navbar dinámica.
- Estructura frontend y microservicios limpia, sin archivos duplicados ni vacíos.
- API Gateway enruta correctamente a los microservicios, CORS configurado.
- Microservicios de catálogo, inventario, sucursal y venta implementados y comunicándose vía REST.
- Scripts bash para levantar, reiniciar y detener todos los servicios y frontend.
- Accesibilidad mejorada (roles ARIA, estructura semántica, contraste).
- Documentación y endpoints en proceso de estandarización.

---


## 🎯 Objetivo MVP

- Flujo completo: registro/login, visualización de catálogo, filtrado, carrito, compra, generación de venta/factura, consulta de stock y sucursales.
- Integración robusta frontend-backend-DB.
- Accesibilidad AA, experiencia de usuario profesional.
- Panel de administración moderno, seguro y funcional.
- Documentación clara y pruebas funcionales.

---


## 🔗 Endpoints Principales


### API Gateway ([localhost:8080](http://localhost:8080))

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


### Autenticación (`auth-service`, integración en curso)

- `POST /api/v1/auth/login` — Login (por API Gateway)
- `POST /api/v1/auth/register` — Registro (por API Gateway)
---

## 🛡️ Panel de Administración Moderno

- Una sola página (`frontend/pages/admin.html`) con tabs para gestión de usuarios y productos.
- Un solo JS (`frontend/js/admin.js`) con lógica centralizada, se debe conectar con backend real.
- Modales Bootstrap para alta/edición de usuarios y productos.
- Protección de acceso solo para admin, login por roles y navegación segura.
- Integración real con backend para CRUD de usuarios e inventario vía API Gateway (en proceso de validación final).
- Estructura visual atractiva y moderna.

---

## ⚙️ Lógica de Negocio Clave

- **Catálogo**: Gestión y filtrado de productos, personalización de bicicletas.
- **Inventario**: Control de stock, movimientos automáticos al vender.
- **Sucursal**: CRUD de sucursales y empleados.
- **Venta**: Orquestación de venta, generación de factura, actualización de inventario.
- **Frontend**: Experiencia de usuario, accesibilidad, integración con APIs, gestión de sesión y carrito.

---


## 🛠️ Próximos Pasos

- Finalizar endpoints de autenticación y perfil de usuario.
- Conectar y validar integración completa frontend-backend en el panel admin (usuarios/productos).
- Mejorar fallback de catálogo si la API está caída.
- Completar documentación de endpoints y ejemplos de requests/responses.
- Pruebas funcionales end-to-end.
- Mejorar accesibilidad en todas las páginas.

---

## 🤖 Scripts de Automatización

- `run_all.sh` — Levanta todos los servicios y frontend.
- `restart_all.sh` — Reinicia todos los servicios.
- `stop_all_services.sh` — Detiene todos los servicios.
- `autorizar_scripts.sh` — Da permisos de ejecución a los scripts.

---


## 📬 Contacto y soporte

®MasterBikes

---

> ℹ️ *Verificar los puertos en los archivos `application.properties` de cada microservicio. Puede haber diferencias según entorno.*
