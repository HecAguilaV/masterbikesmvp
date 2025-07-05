
# Inventario Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>📦 Inventario Service - MasterBikes</h1>
<h3>Stock y movimientos de inventario</h3>
<p><b>Spring Boot · REST · Sello MasterBikes</b></p>

---

## 📁 Estructura de directorios

```text
inventario-service/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción


Microservicio para gestión de inventario, stock y movimientos automáticos al vender. Integrado con catálogo, ventas y el panel de administración moderno para gestión centralizada de productos.

---


## � Endpoints principales

- `GET /api/v1/inventarios` — Listar inventario
- `POST /api/v1/movimientosinventario` — Registrar movimiento
- `GET /api/v1/reportesucursal` — Reporte por sucursal

---


## ⚙️ Lógica de negocio

- Control de stock y movimientos.
- Actualización automática tras ventas.
- Integración con catálogo, sucursales y panel de administración.

---


## 🛠️ Próximos pasos

- Mejorar documentación y ejemplos de requests/responses.
- Pruebas funcionales y de integración.
- Validar integración con frontend y panel admin.

---

> ℹ️ *Verifica el puerto y la configuración en `application.properties`.*