<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>📦 Inventario Service - MasterBikes</h1>
  <h3>Stock y movimientos de inventario</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---
## Estructura de directorios

```
inventario-service/
├── pom.xml
├── readme.md
├── src/
│   ├── main/
│   │   ├── java/masterbikes/inventario_service/
│   │   │   ├── model/
│   │   │   ├── dto/
│   │   │   ├── repository/
│   │   │   ├── service/
│   │   │   └── controller/
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/masterbikes/inventario_service/
└── target/
```

# inventario-service (Microservicio de Inventario)

Microservicio REST para la gestión de stock, movimientos y reportes de inventario de bicicletas, componentes y accesorios.

## Estado actual

- Endpoints REST funcionales para inventario, movimientos y reportes.
- Integración con catálogo, sucursales y ventas vía API Gateway.
- Puerto por defecto: `8084`.

## Endpoints principales

| Método | Ruta                                 | Descripción                        |
|--------|--------------------------------------|------------------------------------|
| GET    | /api/v1/inventarios                  | Listar inventario                  |
| POST   | /api/v1/movimientosinventario        | Registrar movimiento de inventario |
| GET    | /api/v1/reportesucursal              | Reporte de inventario por sucursal |

## Lógica de negocio

- Control de stock y validación de movimientos.
- Generación de reportes combinando datos de otros servicios.
- Integración con catálogo y sucursales.

## Cómo levantar

1. Java 17 y Maven instalados.
2. Base de datos MySQL configurada (`masterbikes_inventario_01v`).
3. Ejecuta:
   ```bash
   ./mvnw spring-boot:run
   ```

## Próximos pasos

- Mejorar documentación de endpoints y ejemplos de requests/responses.
- Consistencia en validaciones y respuestas de error.

---
*Verifica el puerto y la configuración en `application.properties`.*