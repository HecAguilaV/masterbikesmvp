<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>📦 Inventario Service - MasterBikes</h1>
  <h3>Stock y movimientos de inventario</h3>
  <p><b>Spring Boot · REST · Sello MasterBikes</b></p>
</div>

---

## 📁 Estructura de directorios

```text
inventario-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción

Microservicio para gestión de inventario, stock y movimientos automáticos al vender. Integración con catálogo y ventas.

---

## 🔗 Endpoints principales

- `GET /api/v1/inventarios` — Listar inventario
- `POST /api/v1/movimientosinventario` — Registrar movimiento
- `GET /api/v1/reportesucursal` — Reporte por sucursal

---

## ⚙️ Lógica de negocio

- Control de stock y movimientos.
- Actualización automática tras ventas.
- Integración con catálogo y sucursales.

---

## 🛠️ Próximos pasos

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*