
# Venta Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🛒 Venta Service - MasterBikes</h1>
<h3>Orquestación de ventas y facturación</h3>
<p><b>Spring Boot · JPA · MySQL · RestTemplate · Microservicios · Sello MasterBikes</b></p>

---

## 📁 Estructura del proyecto

```text
venta-service/
├── .mvn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       └── venta_service/
│   │   │           ├── VentaServiceApplication.java
│   │   │           ├── controller/
│   │   │           │   ├── FacturaController.java
│   │   │           │   └── VentaController.java
│   │   │           ├── dto/
│   │   │           │   ├── InventarioDTO.java
│   │   │           │   ├── MovimientoInventarioDTO.java
│   │   │           │   └── ProductoBaseDTO.java
│   │   │           ├── model/
│   │   │           │   ├── DetalleVenta.java
│   │   │           │   ├── Factura.java
│   │   │           │   └── Venta.java
│   │   │           ├── repository/
│   │   │           │   ├── DetalleVentaRepository.java
│   │   │           │   ├── FacturaRepository.java
│   │   │           │   └── VentaRepository.java
│   │   │           └── service/
│   │   │               ├── FacturaService.java
│   │   │               └── VentaService.java
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

Microservicio orquestador de ventas que coordina la lógica de negocio completa para transacciones de MasterBikes. Integra múltiples servicios para generar ventas, calcular precios, actualizar inventario automáticamente y generar facturas.

**Puerto:** `8085`

## 🔗 Endpoints principales

### Ventas (`/api/v1/ventas`)

- `GET /api/v1/ventas` — Listar todas las ventas
- `POST /api/v1/ventas` — Crear nueva venta (orquestación completa)
- `GET /api/v1/ventas/{id}` — Obtener venta específica por ID

### Facturas (`/api/v1/facturas`)

- `GET /api/v1/facturas` — Listar todas las facturas
- `GET /api/v1/facturas/{id}` — Obtener factura específica por ID

## 🏗️ Modelos de datos

### Venta

- **Campos:** id, clienteId, sucursalId, fechaVenta, total, estado
- **Relaciones:** Contiene múltiples DetalleVenta
- **Funcionalidad:** Registro principal de transacciones

### DetalleVenta

- **Campos:** id, ventaId, productoId, tipoProducto, cantidad, precioUnitario, subtotal
- **Relaciones:** Vinculado a Venta mediante ventaId
- **Funcionalidad:** Items individuales de cada venta

### Factura

- **Campos:** id, ventaId, numeroFactura, fechaEmision, montoTotal
- **Relaciones:** Generada automáticamente por cada venta
- **Funcionalidad:** Documento fiscal asociado a la venta

## ⚙️ Lógica de negocio compleja

### Orquestación de venta

1. **Validación inicial:** Verifica datos de entrada de la venta
2. **Cálculo de precios:** Consulta precios desde Catálogo Service
3. **Actualización de inventario:** Registra movimientos automáticos
4. **Generación de factura:** Crea documento fiscal asociado
5. **Persistencia:** Guarda toda la transacción de manera atómica

### Integración con microservicios

- **Catálogo Service (`localhost:8082`):** Obtención de precios de productos
- **Inventario Service (`localhost:8084`):** Registro automático de movimientos
- **Comunicación:** RestTemplate configurado para llamadas HTTP

### Funcionalidades automáticas

- **Búsqueda de inventario:** Localiza registros por producto y sucursal
- **Movimientos automáticos:** Crea entradas de tipo "Venta automática"
- **Cálculo de totales:** Suma automática de subtotales por detalle
- **Numeración de facturas:** Generación automática de números únicos

## 🔄 Flujo de venta completo

```text
1. Cliente envía datos de venta → POST /api/v1/ventas
2. VentaService valida y procesa cada detalle
3. Para cada producto:
   - Consulta precio desde Catálogo Service
   - Busca inventario en Inventario Service
   - Registra movimiento de salida
4. Calcula totales y crea Venta
5. Genera Factura automáticamente
6. Retorna venta completa con factura asociada
```

## 🛠️ Características técnicas

- **RestTemplate:** Bean configurado para comunicación entre servicios
- **URLs configurables:** `@Value` para endpoints de servicios externos
- **Manejo de errores:** Try-catch para operaciones críticas
- **Transacciones:** Operaciones atómicas para integridad de datos
- **DTOs especializados:** Transferencia optimizada de datos entre servicios

---

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*