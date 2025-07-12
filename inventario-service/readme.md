
# Inventario Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>📦 Inventario Service - MasterBikes</h1>
<h3>Control de stock y movimientos de inventario</h3>
<p><b>Spring Boot · JPA · MySQL · RestTemplate · Sello MasterBikes</b></p>

---

## 📁 Estructura del proyecto

```text
inventario-service/
├── .mvn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       └── inventario_service/
│   │   │           ├── InventarioServiceApplication.java
│   │   │           ├── controller/
│   │   │           │   ├── InventarioController.java
│   │   │           │   ├── MovimientoInventarioController.java
│   │   │           │   └── ReporteInventarioController.java
│   │   │           ├── dto/
│   │   │           │   ├── InventarioReporteDTO.java
│   │   │           │   └── MovimientoInventarioDTO.java
│   │   │           ├── model/
│   │   │           │   ├── Inventario.java
│   │   │           │   └── MovimientoInventario.java
│   │   │           ├── repository/
│   │   │           │   ├── InventarioRepository.java
│   │   │           │   └── MovimientoInventarioRepository.java
│   │   │           └── service/
│   │   │               ├── InventarioService.java
│   │   │               ├── MovimientoInventarioService.java
│   │   │               └── ReporteInventarioService.java
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

Microservicio especializado en la gestión de inventario y control de stock para MasterBikes. Maneja el inventario por sucursal y producto, registra movimientos automáticos durante las ventas, y proporciona reportes detallados del estado del inventario.

**Puerto:** `8084`

## 🔗 Endpoints principales

### Inventario (`/api/v1/inventarios`)

- `GET /api/v1/inventarios` — Listar todo el inventario
- `POST /api/v1/inventarios` — Crear registro de inventario
- `GET /api/v1/inventarios/{id}` — Obtener inventario por ID
- `DELETE /api/v1/inventarios/{id}` — Eliminar registro
- `GET /api/v1/inventarios?productoId={id}&sucursalId={id}` — Inventario por producto y sucursal
- `GET /api/v1/inventarios/cantidad?productoId={id}&tipoProducto={tipo}` — Cantidad por producto y tipo

### Movimientos (`/api/v1/movimientosinventario`)

- `GET /api/v1/movimientosinventario` — Listar todos los movimientos
- `POST /api/v1/movimientosinventario` — Registrar nuevo movimiento
- `GET /api/v1/movimientosinventario/{id}` — Obtener movimiento por ID
- `DELETE /api/v1/movimientosinventario/{id}` — Eliminar movimiento

### Reportes (`/api/v1/reportesucursal`)

- `GET /api/v1/reportesucursal` — Reporte completo de inventario
- `GET /api/v1/reportesucursal/{sucursalId}` — Reporte por sucursal específica

## 🏗️ Modelos de datos

### Inventario

- **Campos:** id, productoId, sucursalId, tipoProducto, cantidad, stockMinimo, stockMaximo
- **Funcionalidad:** Control de stock por producto y sucursal
- **Queries especializadas:** Búsqueda por sucursal, producto y tipo

### MovimientoInventario

- **Campos:** id, inventarioId, tipoMovimiento, cantidad, fechaMovimiento, motivo
- **Tipos de movimiento:** Entrada, Salida, Ajuste, Venta automática
- **Relación:** Vinculado con tabla Inventario mediante inventarioId

## ⚙️ Lógica de negocio

### Control automático de stock

- **Actualización transaccional:** Los movimientos actualizan automáticamente el inventario
- **Validación de stock:** Verifica disponibilidad antes de registrar salidas
- **Motivos automáticos:** Las ventas generan movimientos con motivo "Venta automática"

### Integración con otros servicios

- **Venta Service:** Recibe movimientos automáticos durante las ventas
- **RestTemplate:** Configurado para comunicación con otros microservicios
- **Reportes detallados:** Combina datos de inventario con información de productos

### Queries especializadas

- `findBySucursalId()` — Inventario por sucursal
- `findByProductoIdAndSucursalId()` — Stock específico por producto y ubicación
- `findByProductoIdAndTipoProducto()` — Búsqueda por tipo de producto

## 🛠️ Características técnicas

- **Spring Boot 3.x** con Spring Data JPA
- **Transacciones:** `@Transactional` para operaciones críticas
- **RestTemplate:** Bean configurado para comunicación entre servicios
- **Base de datos:** MySQL local con relaciones optimizadas
- **DTOs:** Transferencia de datos optimizada para movimientos

---

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*