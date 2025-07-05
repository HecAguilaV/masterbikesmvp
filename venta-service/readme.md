
# Venta Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🛒 Venta Service - MasterBikes</h1>
<h3>Ventas y facturación</h3>
<p><b>Spring Boot · REST · Sello MasterBikes</b></p>

---

## 📁 Estructura de directorios

```text
venta-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción


Microservicio para gestión de ventas y facturación. Orquesta la venta, genera facturas y actualiza inventario. Integrado con el frontend moderno y panel de administración para gestión centralizada de ventas y reportes.

---


## � Endpoints principales

- `GET /api/v1/ventas` — Listar ventas
- `POST /api/v1/ventas` — Registrar venta
- `GET /api/v1/facturas` — Listar facturas

---


## ⚙️ Lógica de negocio

- Orquestación de venta y generación de factura.
- Actualización de inventario tras venta.
- Integración con catálogo, sucursales y panel de administración.

---


## 🛠️ Próximos pasos

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*