<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🏢 Sucursal Service - MasterBikes</h1>
  <h3>Gestión de sucursales y empleados</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---
## Estructura de directorios

```
sucursal-service/
├── pom.xml
├── readme.md
├── src/
│   ├── main/
│   │   ├── java/masterbikes/sucursal_service/
│   │   │   ├── model/
│   │   │   ├── repository/
│   │   │   ├── service/
│   │   │   └── controller/
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/masterbikes/sucursal_service/
└── target/
```

# sucursal-service (Microservicio de Sucursales y Empleados)

Microservicio REST para la gestión de sucursales físicas y empleados. Permite CRUD de sucursales y empleados, y consulta de información relevante para el frontend y otros servicios.

## Estado actual

- Endpoints REST funcionales para sucursales y empleados.
- Integración con inventario y ventas vía API Gateway.
- Puerto por defecto: `8083` o `8084` (verifica en `application.properties`).

## Endpoints principales

| Método | Ruta                        | Descripción                |
|--------|-----------------------------|----------------------------|
| GET    | /api/v1/sucursales          | Listar sucursales          |
| POST   | /api/v1/sucursales          | Crear sucursal             |
| GET    | /api/v1/empleados           | Listar empleados           |
| POST   | /api/v1/empleados           | Crear empleado             |

## Lógica de negocio

- CRUD de sucursales y empleados.
- Relación sucursal-empleado.
- Integración con inventario y ventas.

## Cómo levantar

1. Java 17 y Maven instalados.
2. Base de datos MySQL configurada (`masterbikes_sucursal_01v`).
3. Ejecuta:
   ```bash
   ./mvnw spring-boot:run
   ```

## Próximos pasos

- Mejorar documentación de endpoints y ejemplos de requests/responses.
- Consistencia en validaciones y respuestas de error.

---
*Verifica el puerto y la configuración en `application.properties`.*
4.  **Ejecución**: Una vez compilado, puedes ejecutar la aplicación con:
    ```bash
    java -jar target/sucursal-service-0.0.1-SNAPSHOT.jar
    ```
    O, si estás en tu IDE (IntelliJ IDEA, Eclipse), puedes ejecutar la clase `SucursalServiceApplication.java`.

El servicio estará disponible en el puerto `8083` en `http://localhost:8083`. La documentación de la API (Springdoc OpenAPI/Swagger UI) estará accesible en `http://localhost:8083/swagger-ui.html`.

## Pruebas

Las pruebas unitarias y de integración se encuentran en `src/test/java/masterbikes/sucursal_service/`. Puedes ejecutarlas con el siguiente comando:

```bash
./mvnw test

Interacción con Otros Servicios
Este servicio está diseñado para interactuar con:

Auth-Service: Para la gestión de usuarios, ya que la entidad Empleado tiene un usuarioId para vincular con un usuario del servicio de autenticación.

Gateway API: Deberá ser expuesto a través de un API Gateway para su consumo por el frontend u otros microservicios.


