
# Sucursal Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🏢 Sucursal Service - MasterBikes</h1>
<h3>Gestión de sucursales y empleados</h3>
<p><b>Spring Boot · JPA · MySQL · REST API · Sello MasterBikes</b></p>

---

## 📁 Estructura del proyecto

```text
sucursal-service/
├── .mvn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       └── sucursal_service/
│   │   │           ├── SucursalServiceApplication.java
│   │   │           ├── controller/
│   │   │           │   ├── EmpleadoController.java
│   │   │           │   └── SucursalController.java
│   │   │           ├── model/
│   │   │           │   ├── Empleado.java
│   │   │           │   └── Sucursal.java
│   │   │           ├── repository/
│   │   │           │   ├── EmpleadoRepository.java
│   │   │           │   └── SucursalRepository.java
│   │   │           └── service/
│   │   │               ├── EmpleadoService.java
│   │   │               └── SucursalService.java
│   │   └── resources/
│   │       └── application.properties
│   └── test/
├── target/
├── mvnw
├── mvnw.cmd
├── pom.xml
└── readme.md
```

## 🚦 Descripción

Microservicio especializado en la gestión de sucursales y empleados de MasterBikes. Proporciona servicios CRUD completos para la administración de ubicaciones físicas y personal, siendo fundamental para la operación multi-sucursal del negocio.

**Puerto:** `8083`

## 🔗 Endpoints principales

### Sucursales (`/api/v1/sucursales`)

- `GET /api/v1/sucursales` — Listar todas las sucursales
- `POST /api/v1/sucursales` — Crear nueva sucursal
- `GET /api/v1/sucursales/{id}` — Obtener sucursal por ID
- `DELETE /api/v1/sucursales/{id}` — Eliminar sucursal

### Empleados (`/api/v1/empleados`)

- `GET /api/v1/empleados` — Listar todos los empleados
- `POST /api/v1/empleados` — Crear nuevo empleado
- `GET /api/v1/empleados/{id}` — Obtener empleado por ID
- `DELETE /api/v1/empleados/{id}` — Eliminar empleado

## 🏗️ Modelos de datos

### Sucursal

- **Funcionalidad:** Representa ubicaciones físicas de MasterBikes
- **Campos típicos:** id, nombre, dirección, teléfono, ciudad, región
- **Relaciones:** Base para inventario y asignación de empleados

### Empleado

- **Funcionalidad:** Gestión del personal de cada sucursal
- **Campos típicos:** id, nombre, cargo, sucursalId, email, teléfono
- **Relaciones:** Vinculación con sucursales específicas

## ⚙️ Lógica de negocio

### Gestión de sucursales

- **CRUD completo:** Operaciones básicas de creación, lectura, actualización y eliminación
- **Integración multi-sucursal:** Base para operaciones de inventario y ventas
- **Datos de contacto:** Información completa para atención al cliente

### Gestión de empleados

- **Asignación por sucursal:** Empleados vinculados a ubicaciones específicas
- **Control de personal:** Información de contacto y roles
- **Estructura organizacional:** Base para futuras funcionalidades de permisos

### Integración con otros servicios

- **Inventario Service:** Las sucursales son clave para control de stock
- **Venta Service:** Ventas asociadas a sucursales específicas
- **Auth Service:** Potencial integración para empleados como usuarios

## 🛠️ Características técnicas

- **Spring Boot 3.x** con Spring Data JPA
- **Arquitectura:** Patrón Repository-Service-Controller estándar
- **Base de datos:** MySQL local con tablas relacionadas
- **REST API:** Endpoints RESTful completamente funcionales
- **Simplicidad:** Diseño limpio y directo para operaciones CRUD

## 🔄 Integraciones actuales

- **Inventario:** Sucursales como base para gestión de stock
- **Ventas:** Asociación de transacciones con ubicaciones
- **Reportes:** Datos organizacionales para análisis por sucursal

---
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*


