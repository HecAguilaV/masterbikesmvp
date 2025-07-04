<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>📦 Catálogo Service - MasterBikes</h1>
  <h3>Gestión de productos y personalización</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---
## Estructura de directorios

```
catalogo-service/
├── pom.xml
├── readme.md
├── src/
│   ├── main/
│   │   ├── java/masterbikes/catalogo_service/
│   │   │   ├── model/
│   │   │   ├── dto/
│   │   │   ├── repository/
│   │   │   ├── service/
│   │   │   └── controller/
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/masterbikes/catalogo_service/
└── target/
```

# catalogo-service (Microservicio de Catálogo)

Microservicio REST para la gestión de bicicletas, componentes y accesorios. Permite listar, filtrar y crear productos, así como la personalización de bicicletas.

## Estado actual

- Endpoints REST funcionales para catálogo, componentes y accesorios.
- Integración con frontend y otros microservicios vía API Gateway.
- Puerto por defecto: `8082`.

## Endpoints principales

| Método | Ruta                                 | Descripción                        |
|--------|--------------------------------------|------------------------------------|
| GET    | /api/v1/catalogo/bicicletas          | Listar bicicletas                  |
| POST   | /api/v1/catalogo/bicicletas          | Crear bicicleta personalizada      |
| GET    | /api/v1/catalogo/componentes         | Listar componentes                 |
| GET    | /api/v1/catalogo/accesorios          | Listar accesorios                  |

## Lógica de negocio

- Gestión de productos y componentes.
- Validación de compatibilidad para personalización.
- Integración con inventario y ventas.

## Cómo levantar

1. Java 17 y Maven instalados.
2. Base de datos MySQL configurada (`masterbikes_catalogo_01v`).
3. Ejecuta:
   ```bash
   ./mvnw spring-boot:run
   ```

## Próximos pasos

- Mejorar documentación de endpoints y ejemplos de requests/responses.
- Consistencia en validaciones y respuestas de error.

---
*Verifica el puerto y la configuración en `application.properties`.*

- **`CatalogoServiceApplicationTests.java`**: Verifica que el contexto Spring Boot se cargue correctamente.

---

### 8. Archivos de Proyecto y Build

- **`pom.xml`**:
  - Define dependencias: Spring Boot Data JPA, MySQL Connector, Lombok, Web, Test, SpringDoc OpenAPI.
  - Java 17
  - Configuración del Maven Compiler Plugin.

- **`maven-wrapper.properties`**:
  - Versión de Maven: `3.9.10`

---

## ▶️ Cómo Usar

### Requisitos

- **Java 17**
- **Base de datos MySQL** corriendo y accesible en:
