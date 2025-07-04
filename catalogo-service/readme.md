<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>📦 Catálogo Service - MasterBikes</h1>
  <h3>Gestión de productos y personalización</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---

## 📁 Estructura de directorios

```text
catalogo-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción

Microservicio para gestión de catálogo de bicicletas, componentes y accesorios. Permite personalización y filtrado avanzado.

---

## 🔗 Endpoints principales

- `GET /api/v1/catalogo/bicicletas` — Listar bicicletas
- `GET /api/v1/catalogo/componentes` — Listar componentes
- `GET /api/v1/catalogo/accesorios` — Listar accesorios
- `POST /api/v1/catalogo/bicicletas` — Crear bicicleta personalizada

---

## ⚙️ Lógica de negocio

- Gestión y filtrado de productos.
- Personalización de bicicletas.
- Integración con inventario y ventas.

---

## 🛠️ Próximos pasos

- Mejorar documentación de endpoints y ejemplos.
- Pruebas funcionales y de integración.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*
