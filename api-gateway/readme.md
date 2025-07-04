<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🚦 API Gateway - MasterBikes</h1>
  <h3>Enrutamiento, seguridad y acceso centralizado</h3>
  <p><b>Spring Cloud Gateway · Seguridad · CORS · Sello MasterBikes</b></p>
</div>

---

## 📁 Estructura de directorios

```text
api-gateway/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción

API Gateway centraliza el enrutamiento, la seguridad y el acceso a los microservicios de MasterBikes. Gestiona CORS, autenticación y expone los endpoints REST del sistema.

---

## 🔗 Endpoints principales

- `/api/catalogo/**` → Catálogo
- `/api/inventario/**` → Inventario
- `/api/sucursal/**` → Sucursales
- `/api/venta/**` → Ventas
- `/api/auth/**` → Autenticación

---

## ⚙️ Características

- Enrutamiento dinámico a microservicios.
- Seguridad y CORS centralizados.
- Integración con Spring Cloud Gateway.
- Documentación y pruebas en proceso de mejora.

---

## 🛠️ Próximos pasos

- Mejorar documentación de rutas y ejemplos.
- Integrar autenticación JWT.
- Pruebas de resiliencia y fallback.

---

> ℹ️ *Verifica los puertos y rutas en los archivos de configuración de cada microservicio.*
