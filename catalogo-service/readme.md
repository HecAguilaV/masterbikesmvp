
# Catálogo Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>📦 Catálogo Service - MasterBikes</h1>
<h3>Gestión de productos y personalización</h3>
<p><b>Spring Boot · REST · Sello MasterBikes</b></p>

---

## 📁 Estructura de directorios

```text
catalogo-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción


Microservicio para gestión de catálogo de bicicletas, componentes y accesorios. Permite personalización y filtrado avanzado. Integrado con el frontend moderno y el panel de administración para gestión centralizada de productos.

---


## � Endpoints principales

- `GET /api/v1/catalogo/bicicletas` — Listar bicicletas
- `GET /api/v1/catalogo/componentes` — Listar componentes
- `GET /api/v1/catalogo/accesorios` — Listar accesorios
- `POST /api/v1/catalogo/bicicletas` — Crear bicicleta personalizada

---


## ⚙️ Lógica de negocio

- Gestión y filtrado de productos.
- Personalización de bicicletas.
- Integración con inventario, ventas y panel de administración.

---


## 🛠️ Próximos pasos

- Mejorar documentación de endpoints y ejemplos.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*
