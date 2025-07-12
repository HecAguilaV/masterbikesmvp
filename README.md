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
- **API Gateway**: Spring Cloud Gateway con WebFlux, enruta y centraliza CORS. Puerto: `8080`. ✅ **FUNCIONAL**
- **Microservicios**:
  - `catalogo-service` (8082): Catálogo de bicicletas, componentes y accesorios con personalización avanzada. ✅ **FUNCIONAL**
  - `inventario-service` (8084): Control de stock, movimientos automáticos y reportes por sucursal. ✅ **FUNCIONAL**
  - `sucursal-service` (8083): Gestión de sucursales y empleados con CRUD completo. ✅ **FUNCIONAL**
  - `venta-service` (8085): Orquestación de ventas, facturación e integración con inventario. ✅ **FUNCIONAL**
  - `auth-service` (8081): Servicio de autenticación con errores de compilación. ❌ **NO FUNCIONAL**
- **Base de datos**: MySQL local, una por microservicio con relaciones optimizadas.
- **Comunicación**: RestTemplate para comunicación entre microservicios funcionando.
- **Autenticación**: Simulada en frontend, auth-service no integrado por errores técnicos.

---



## 📊 Estado Actual (julio 2025)

- **Frontend moderno y funcional:** Navbar estandarizada, catálogo dinámico, carrito de compras, sistema de sesiones **simulado** y páginas de cliente completamente integradas.
- **Panel de administración:** Una sola página (`admin.html`) con tabs para usuarios y productos, modales Bootstrap, protección de acceso por roles **simulada** (no conectada a auth-service real).
- **Microservicios implementados y funcionales:**
  - **API Gateway:** ✅ Enrutamiento WebFlux, CORS configurado, rutas a todos los servicios
  - **Catálogo Service:** ✅ CRUD completo de bicicletas/componentes/accesorios, personalización con DTOs
  - **Inventario Service:** ✅ Control de stock, movimientos automáticos, reportes por sucursal
  - **Sucursal Service:** ✅ Gestión completa de sucursales y empleados
  - **Venta Service:** ✅ Orquestación completa, integración con inventario y catálogo
  - **Auth Service:** ❌ Desarrollado pero con errores de compilación, no funcional
- **Integración entre servicios:** ✅ Comunicación entre microservicios mediante RestTemplate funciona
- **Base de datos:** ✅ MySQL por microservicio con relaciones optimizadas
- **Scripts de automatización:** ✅ Completos para levantar, reiniciar y detener servicios
- **Autenticación:** ⚠️ Simulada en frontend, sin backend real de usuarios
- **Documentación:** ✅ READMEs actualizados con estado real de cada servicio

---


## 🎯 Objetivo MVP (Estado actual)

### ✅ Lo que funciona
- Visualización de catálogo, filtrado, carrito de compras
- Generación de venta/factura con integración entre servicios
- Consulta de stock y sucursales
- Integración frontend-backend-DB para servicios principales
- Panel de administración con interfaz completa

### ⚠️ Lo que está simulado
- Registro/login de usuarios (frontend mock)
- Gestión de usuarios en panel admin (datos de prueba)
- Autenticación y autorización

### ❌ Lo que falta
- Auth-service funcional
- Integración real de usuarios entre frontend y backend
- Sistema de roles real conectado

**Nivel alcanzado:** MVP funcional para catálogo, inventario, ventas y sucursales. Autenticación pendiente por problemas técnicos.

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


### Autenticación (`auth-service`, puerto 8081)

**⚠️ SERVICIO NO FUNCIONAL - Errores de compilación**

- `POST /auth/login` — Login con JWT (NO DISPONIBLE)
- `POST /auth/register` — Registro de usuario (NO DISPONIBLE)
- `GET /api/usuarios` — Listar usuarios (NO DISPONIBLE)
- `POST /api/usuarios` — Crear usuario (NO DISPONIBLE)
- `PUT /api/usuarios/{id}` — Actualizar usuario (NO DISPONIBLE)
- `DELETE /api/usuarios/{id}` — Eliminar usuario (NO DISPONIBLE)

*El frontend usa autenticación simulada para demostración.*
---

## 🛡️ Panel de Administración

- Una sola página (`frontend/pages/admin.html`) con tabs para gestión de usuarios y productos.
- Un solo JS (`frontend/js/admin.js`) con lógica centralizada.
- Modales Bootstrap para alta/edición de usuarios y productos.
- **Protección de acceso simulada** - no conectada con auth-service real.
- **Datos mock** para demostración de funcionalidad.
- Estructura visual moderna completamente implementada.

---

## ⚙️ Lógica de Negocio Clave

- **Catálogo**: Gestión y filtrado de productos, personalización de bicicletas.
- **Inventario**: Control de stock, movimientos automáticos al vender.
- **Sucursal**: CRUD de sucursales y empleados.
- **Venta**: Orquestación de venta, generación de factura, actualización de inventario.
- **Frontend**: Experiencia de usuario, accesibilidad, integración con APIs, gestión de sesión y carrito.

---


## 🛠️ Próximos Pasos (realistas)

### Prioridad alta
- **Arreglar auth-service:** Solucionar errores de compilación en Usuario.java
- **Conectar autenticación:** Integrar auth-service funcional con frontend
- **Probar integración completa:** Validar flujo end-to-end con usuarios reales

### Prioridad media  
- **Optimización:** Mejorar performance entre microservicios
- **Documentación API:** Swagger para endpoints funcionales
- **Pruebas:** Testing de servicios que funcionan

### Prioridad baja
- **Funcionalidades avanzadas:** Filtros más complejos, reportes detallados
- **Deploy:** Containerización cuando todo funcione
- **Monitoring:** Logs y métricas para producción

**Enfoque:** Primero hacer funcionar lo básico, luego agregar mejoras.

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

## 📝 Nota sobre el proyecto

 Hemos logrado implementar exitosamente 5 de 6 microservicios con funcionalidad completa, integración entre servicios y un frontend moderno. El auth-service presenta errores técnicos que estamos aprendiendo a resolver.

**Lo que aprendimos:** Arquitectura de microservicios, comunicación entre servicios, Spring Boot, bases de datos relacionales, desarrollo frontend, trabajo en equipo.

**Lo que nos falta:** Depuración de errores complejos, integración completa de seguridad, deployment en producción.

Es un MVP honesto que muestra nuestro nivel actual de aprendizaje y las herramientas que hemos logrado dominar hasta ahora.

---

> ℹ️ *Verificar los puertos en los archivos `application.properties` de cada microservicio. Puede haber diferencias según entorno.*
