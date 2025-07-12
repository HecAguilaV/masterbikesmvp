
# Catálogo Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>�‍♂️ Catálogo Service - MasterBikes</h1>
<h3>Gestión de productos y personalización de bicicletas</h3>
<p><b>Spring Boot · JPA · MySQL · REST API · Sello MasterBikes</b></p>

---

## 📁 Estructura del proyecto

```text
catalogo-service/
├── .mvn/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       └── catalogo_service/
│   │   │           ├── CatalogoServiceApplication.java
│   │   │           ├── controller/
│   │   │           │   ├── AccesorioController.java
│   │   │           │   ├── BicicletaController.java
│   │   │           │   └── ComponenteController.java
│   │   │           ├── dto/
│   │   │           │   └── BicicletaDTO.java
│   │   │           ├── model/
│   │   │           │   ├── Accesorio.java
│   │   │           │   ├── Bicicleta.java
│   │   │           │   └── Componente.java
│   │   │           ├── repository/
│   │   │           │   ├── AccesorioRepository.java
│   │   │           │   ├── BicicletaRepository.java
│   │   │           │   └── ComponenteRepository.java
│   │   │           └── service/
│   │   │               ├── AccesorioService.java
│   │   │               ├── BicicletaService.java
│   │   │               └── ComponenteService.java
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

Microservicio especializado en la gestión del catálogo de productos de MasterBikes. Maneja bicicletas predefinidas y personalizadas, componentes (marcos, ruedas, frenos, manubrios, sillines) y accesorios. Implementa lógica compleja para la personalización de bicicletas y validación de componentes.

**Puerto:** `8082`

## 🔗 Endpoints principales

### Bicicletas (`/api/v1/catalogo/bicicletas`)
- `GET /api/v1/catalogo/bicicletas` — Listar todas las bicicletas
- `POST /api/v1/catalogo/bicicletas` — Crear bicicleta desde DTO
- `GET /api/v1/catalogo/bicicletas/{id}` — Obtener bicicleta por ID
- `DELETE /api/v1/catalogo/bicicletas/{id}` — Eliminar bicicleta

### Componentes (`/api/v1/catalogo/componentes`)
- `GET /api/v1/catalogo/componentes` — Listar todos los componentes
- `POST /api/v1/catalogo/componentes` — Crear nuevo componente
- `GET /api/v1/catalogo/componentes/{id}` — Obtener componente por ID
- `DELETE /api/v1/catalogo/componentes/{id}` — Eliminar componente

### Accesorios (`/api/v1/catalogo/accesorios`)
- `GET /api/v1/catalogo/accesorios` — Listar todos los accesorios
- `POST /api/v1/catalogo/accesorios` — Crear nuevo accesorio
- `GET /api/v1/catalogo/accesorios/{id}` — Obtener accesorio por ID
- `DELETE /api/v1/catalogo/accesorios/{id}` — Eliminar accesorio

## 🏗️ Modelos de datos

### Bicicleta
- **Campos:** id, idCliente, tallaUsuario, esPredefinida, modelo
- **Relaciones:** Componentes (marco, rueda, freno, manubrio, sillin) mediante `@ManyToOne`
- **Funcionalidad:** Diferencia entre bicicletas predefinidas y personalizadas

### Componente
- **Campos:** id, tipo, tipoUso, talla, marca, precio, etc.
- **Tipos:** Marco, Rueda, Freno, Manubrio, Sillin
- **Búsquedas:** Por tipo, uso y talla mediante queries personalizadas

### Accesorio
- **Funcionalidad:** Productos adicionales para bicicletas
- **CRUD completo:** Gestión completa mediante AccesorioService

## ⚙️ Lógica de negocio

### Personalización de bicicletas
- Creación mediante `BicicletaDTO` con IDs de componentes
- Validación automática de componentes existentes
- Soporte para bicicletas predefinidas y personalizadas
- Asignación de cliente para bicicletas personalizadas

### Queries especializadas
- Búsqueda de bicicletas predefinidas: `findByEsPredefinidaTrue()`
- Bicicletas por cliente: `findByIdClienteAndEsPredefinidaFalse()`
- Componentes por tipo y uso: `findByTipoAndTipoUsoAndTalla()`

## 🛠️ Tecnologías implementadas

- **Spring Boot 3.x** con Spring Data JPA
- **Base de datos:** MySQL local
- **Validación:** Validación automática de DTOs
- **Arquitectura:** Patrón Repository-Service-Controller
- **Anotaciones:** Lombok para reducir boilerplate code

---

- Mejorar documentación de endpoints y ejemplos.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*
