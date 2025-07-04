<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🧾 Venta Service - MasterBikes</h1>
  <h3>Ventas y facturación</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---
## Estructura de directorios

```
venta-service/
├── pom.xml
├── readme.md
├── src/
│   ├── main/
│   │   ├── java/masterbikes/venta_service/
│   │   │   ├── model/
│   │   │   ├── dto/
│   │   │   ├── repository/
│   │   │   ├── service/
│   │   │   └── controller/
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/masterbikes/venta_service/
└── target/
```

# venta-service (Microservicio de Ventas y Facturación)

Microservicio REST para la gestión de ventas y facturación. Orquesta el proceso de venta, generación de factura y actualización de inventario, integrando catálogo e inventario.

## Estado actual

- Endpoints REST funcionales para ventas y facturas.
- Integración con catálogo, inventario y sucursales vía API Gateway.
- Puerto por defecto: `8085`.

## Endpoints principales

| Método | Ruta                        | Descripción                |
|--------|-----------------------------|----------------------------|
| GET    | /api/v1/ventas              | Listar ventas              |
| POST   | /api/v1/ventas              | Registrar venta            |
| GET    | /api/v1/facturas            | Listar facturas            |

## Lógica de negocio

- Orquestación de venta y generación de factura.
- Actualización de inventario tras venta.
- Integración con catálogo e inventario.

## Cómo levantar

1. Java 17 y Maven instalados.
2. Base de datos MySQL configurada (`masterbikes_venta_01v`).
3. Ejecuta:
   ```bash
   ./mvnw spring-boot:run
   ```

## Próximos pasos

- Mejorar documentación de endpoints y ejemplos de requests/responses.
- Consistencia en validaciones y respuestas de error.

---
*Verifica el puerto y la configuración en `application.properties`.*
    * Usuario: `root`
    * Contraseña: (vacía)
    * La propiedad `spring.jpa.hibernate.ddl-auto=update` configurará Hibernate para actualizar el esquema de la base de datos automáticamente al iniciar la aplicación si hay cambios en las entidades.
3.  **Comunicación entre servicios**: Las URLs de los servicios de catálogo e inventario están configuradas en `application.properties`:
    * `catalogo-service`: `http://localhost:8082`
    * `inventario-service`: `http://localhost:8084`
4.  **Compilación**: Navega hasta la raíz de esta carpeta (`venta-service/`) en tu terminal y ejecuta:
    ```bash
    ./mvnw clean install
    ```
5.  **Ejecución**: Una vez compilado, puedes ejecutar la aplicación con:
    ```bash
    java -jar target/venta-service-0.0.1-SNAPSHOT.jar
    ```
    O, si estás en tu IDE (IntelliJ IDEA, Eclipse), puedes ejecutar la clase `VentaServiceApplication.java`.

El servicio estará disponible en el puerto `8085` en `http://localhost:8085`. La documentación de la API (Springdoc OpenAPI/Swagger UI) estará accesible en `http://localhost:8085/swagger-ui.html` (asumiendo que está configurado por defecto con Springdoc).

## Pruebas

Las pruebas unitarias y de integración se encuentran en `src/test/java/masterbikes/venta_service/`. Puedes ejecutarlas con el siguiente comando:

```bash
./mvnw test

Interacción con Otros Servicios
Este servicio interactúa con:

Servicio de Catálogo/Producto: Para obtener los detalles de los productos (precio unitario, modelo, marca) que se incluyen en los DetalleVenta a través de ProductoBaseDTO.

Servicio de Inventario: A través de InventarioDTO y MovimientoInventarioDTO para registrar la salida de productos después de una venta.

Auth-Service / Cliente-Service: Para obtener la información del clienteId y vendedorId asociados a la venta.

Sucursal-Service: Para obtener la información de la sucursalId donde se realiza la venta.