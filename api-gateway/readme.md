
# API Gateway - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🚦 API Gateway - MasterBikes</h1>
<h3>Enrutamiento, seguridad y acceso centralizado</h3>
<p><b>Spring Cloud Gateway · Seguridad · CORS · Sello MasterBikes</b></p>

---

## 📁 Estructura de directorios

```text
api-gateway/
├── pom.xml
├── readme.md
└── ...
```

## 🚦 Descripción


API Gateway centraliza el enrutamiento, la seguridad y el acceso a los microservicios de MasterBikes. Gestiona CORS, autenticación, protección de rutas y expone los endpoints REST del sistema, permitiendo la integración real del frontend moderno y el panel de administración.

---


## 🔗 Endpoints principales

- `/api/catalogo/**` → Catálogo
- `/api/inventario/**` → Inventario
- `/api/sucursal/**` → Sucursales
- `/api/venta/**` → Ventas
- `/api/auth/**` → Autenticación y gestión de usuarios

---


## ⚙️ Características

- Enrutamiento dinámico a microservicios.
- Seguridad y CORS centralizados.
- Integración con Spring Cloud Gateway.
- Integración real con frontend moderno y panel admin seguro.
- Documentación y pruebas en proceso de mejora.

---


## 🛠️ Próximos pasos

- Mejorar documentación de rutas y ejemplos.
- Integrar autenticación JWT y protección avanzada de rutas.
- Pruebas de resiliencia y fallback.
- Validar integración completa con frontend y panel admin.

---

> ℹ️ *Verifica los puertos y rutas en los archivos de configuración de cada microservicio.*
