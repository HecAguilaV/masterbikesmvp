<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🧾 Venta Service - MasterBikes</h1>
  <h3>Ventas y facturación</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---

## 📁 Estructura de directorios

```text
venta-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción

Microservicio para gestión de ventas y facturación. Orquesta la venta, genera facturas y actualiza inventario.

---

## 🔗 Endpoints principales

- `GET /api/v1/ventas` — Listar ventas
- `POST /api/v1/ventas` — Registrar venta
- `GET /api/v1/facturas` — Listar facturas

---

## ⚙️ Lógica de negocio

- Orquestación de venta y generación de factura.
- Actualización de inventario tras venta.
- Integración con catálogo y sucursales.

---

## 🛠️ Próximos pasos

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*