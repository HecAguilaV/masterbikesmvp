
# API Gateway - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🚦 API Gateway - MasterBikes</h1>
<h3>Enrutamiento, seguridad y acceso centralizado</h3>
<p><b>Spring Cloud Gateway · WebFlux · CORS · Sello MasterBikes</b></p>

---

## 📁 Estructura del proyecto

```text
api-gateway/
├── .mvn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       └── api_gateway/
│   │   │           ├── ApiGatewayApplication.java
│   │   │           └── CorsConfig.java
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

API Gateway centraliza el enrutamiento y la gestión de CORS para todos los microservicios de MasterBikes. Utiliza Spring Cloud Gateway con WebFlux para crear un punto de entrada único que facilita la integración del frontend con todos los servicios backend.

## 🔗 Configuración de rutas

**Puerto:** `8080`

### Rutas configuradas:
- `/api/catalogo/**` → `http://localhost:8082` (Catálogo Service)
- `/api/inventario/**` → `http://localhost:8084` (Inventario Service)  
- `/api/sucursal/**` → `http://localhost:8083` (Sucursal Service)
- `/api/venta/**` → `http://localhost:8085` (Venta Service)
- `/auth/**` → `http://localhost:8081` (Auth Service)
- `/api/usuarios/**` → `http://localhost:8081` (Auth Service - Gestión de usuarios)

## ⚙️ Características técnicas

- **Framework:** Spring Boot 3.5.3 con Spring Cloud Gateway
- **Protocolo:** WebFlux (programación reactiva)
- **CORS:** Configurado para permitir origen `http://localhost:3000`
- **Métodos HTTP:** GET, POST, PUT, DELETE, OPTIONS
- **Headers:** Permitidos todos (`*`)
- **Filtros:** StripPrefix para limpiar rutas

## 🛠️ Configuración principal

### CORS Global
```properties
spring.cloud.gateway.server.webflux.globalcors.cors-configurations.[/**].allowedOrigins=http://localhost:3000
spring.cloud.gateway.server.webflux.globalcors.cors-configurations.[/**].allowedMethods=GET,POST,PUT,DELETE,OPTIONS
spring.cloud.gateway.server.webflux.globalcors.cors-configurations.[/**].allowedHeaders=*
```

### Enrutamiento automático
Todas las rutas usan `StripPrefix=2` para `/api/*` y `StripPrefix=0` para `/auth/*` y `/api/usuarios/*`

---


## 🛠️ Próximos pasos

- Mejorar documentación de rutas y ejemplos.
- Integrar autenticación JWT y protección avanzada de rutas.
- Pruebas de resiliencia y fallback.
- Validar integración completa con frontend y panel admin.

---

> ℹ️ *Verifica los puertos y rutas en los archivos de configuración de cada microservicio.*
