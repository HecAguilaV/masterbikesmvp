<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🚦 API Gateway - MasterBikes</h1>
  <h3>Enrutamiento, seguridad y acceso centralizado</h3>
  <p><b>Spring Cloud Gateway · Seguridad · CORS · Sello MasterBikes</b></p>
</div>

---
## Estructura de directorios

```
api-gateway/
├── pom.xml
├── readme.md
├── mvnw / mvnw.cmd
├── src/
│   ├── main/
│   │   ├── java/masterbikes/api_gateway/
│   │   │   ├── ApiGatewayApplication.java
│   │   │   └── (otras clases de configuración)
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/masterbikes/api_gateway/
└── target/
```

# API Gateway - MasterBikes

El API Gateway es el punto de entrada único para el frontend y clientes externos. Centraliza el enrutamiento, CORS y la seguridad, y expone los endpoints REST de los microservicios.

## Estado actual

- Enrutamiento funcional a todos los microservicios (catálogo, inventario, sucursal, venta).
- CORS habilitado para el frontend.
- Puerto por defecto: `8080`.

## Endpoints expuestos

| Método | Ruta Gateway                | Microservicio destino         | Descripción                       |
|--------|----------------------------|-------------------------------|-----------------------------------|
| GET    | /api/catalogo/bicicletas   | catalogo-service (8082)       | Listar bicicletas                 |
| POST   | /api/catalogo/bicicletas   | catalogo-service (8082)       | Crear bicicleta personalizada     |
| GET    | /api/inventario            | inventario-service (8084)     | Listar inventario                 |
| POST   | /api/movimientosinventario | inventario-service (8084)     | Registrar movimiento de inventario|
| GET    | /api/sucursales            | sucursal-service (8083/8084*) | Listar sucursales                 |
| POST   | /api/ventas                | venta-service (8085)          | Registrar venta                   |
| POST   | /api/auth/login            | auth-service (por definir)    | Login de usuario                  |
| POST   | /api/auth/register         | auth-service (por definir)    | Registro de usuario               |

## Cómo levantar

1. Java 17 instalado.
2. Microservicios levantados en sus puertos.
3. Desde esta carpeta:
   ```bash
   ./mvnw spring-boot:run
   ```

## Próximos pasos

- Mejorar manejo de errores y fallback.
- Documentar ejemplos de requests/responses.

---
*Verifica los puertos y rutas en `application.properties`.*
    - `venta-service`: `http://localhost:8085`
