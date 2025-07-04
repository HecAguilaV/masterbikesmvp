
<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="150"/>
  <h1>🎨 Frontend - MasterBikes</h1>
  <h3>Accesible, moderno y 100% estático</h3>
  <p><b>HTML5 · CSS3 · JavaScript puro · Accesibilidad · Consistencia visual</b></p>
</div>

---

## 🚦 Descripción

Frontend estático, accesible y profesional para MasterBikes. Incluye catálogo, arriendo, personalización, carrito, login/registro y página de cliente. Integración directa con el API Gateway y microservicios Java.

Cumple con:
- [x] **Accesibilidad AA (WCAG 2.1)**: roles ARIA, contraste, navegación por teclado, etiquetas semánticas.
- [x] **Buenas prácticas HTML5/CSS3**: estructura semántica, responsive, uso de Bootstrap y estilos propios.
- [x] **Consistencia visual y de interacción** en todas las páginas.
- [x] **Normas de código limpio y modularidad** en JS.
- [x] **Documentación clara y ejemplos de uso**.

---

## 📊 Estado actual

- Navbar y barra superior estandarizadas en todas las páginas.
- Catálogo dinámico, filtrado, carrito y sesión funcionales.
- Página de cliente accesible y con botón de alto contraste.
- Scripts de automatización para levantar/detener servicios.
- Accesibilidad mejorada (roles ARIA, estructura semántica, contraste).

---

## 🗂️ Estructura

- `/index.html`, `/pages/`: Páginas principales.
- `/css/`: Estilos globales, navbar, catálogo, temas.
- `/js/`: Lógica de sesión, catálogo, carrito, personalización.
- `/images/`: Imágenes de productos y recursos visuales.

---

## 🔗 Consumo de APIs

El frontend consume los endpoints REST a través del API Gateway (`http://localhost:8080`).

### Ejemplo de endpoints consumidos

- `GET /api/catalogo/bicicletas` — Listar bicicletas
- `POST /api/venta/ventas` — Registrar venta
- `GET /api/inventario` — Consultar stock

---

## 🤖 Scripts de automatización

- `run_all.sh` — Levanta todos los servicios y frontend (servidor Python en puerto 8080).
- `stop_all.sh` — Detiene todos los servicios y frontend.

---

## 🛠️ Próximos pasos

- Mejorar fallback de catálogo si la API está caída.
- Replicar mejoras de accesibilidad en todas las páginas.
- Documentar ejemplos de requests/responses.

---

## 🚀 Cómo levantar el frontend

1. Navega a la carpeta `frontend/`.
2. Ejecuta:
   ```bash
   python3 -m http.server 8080
   ```
3. Accede a `http://localhost:8080/frontend/index.html` en tu navegador.

---

## 📁 Estructura de directorios

```text
frontend/
├── index.html
├── readme.md
├── css/
│   ├── styles.css
│   ├── navbar.css
│   ├── catalog-styles.css
│   ├── orion-futuristic.css
│   └── ...
├── images/
│   ├── (todas las imágenes de productos, banners, logos, etc.)
├── js/
│   ├── session.js
│   ├── catalogo.js
│   ├── cart.js
│   ├── personalizacion.js
│   └── ...
├── pages/
│   ├── catalogo.html
│   ├── arriendo.html
│   ├── personalizacion.html
│   ├── formulario.html
│   ├── contacto.html
│   ├── cliente.html
│   └── ...
└── (otros recursos estáticos)
```

---

## 🛠️ Tecnologías Principales

- **HTML5**: Estructura semántica y accesible para todas las páginas.
- **CSS3**: Estilos modernos, responsivos y consistentes, usando Bootstrap y hojas propias.
- **JavaScript**: Lógica de UI, integración con APIs REST, gestión de sesión y carrito, todo modular y reutilizable.
- *(Opcional en el futuro: frameworks SPA como React/Vue, o utilidades como jQuery si se requiere, pero actualmente todo es JS puro para máxima consistencia y mantenibilidad.)*

---

> ℹ️ *No requiere Node.js ni npm. Todo es HTML/CSS/JS puro. Cumple con estándares de accesibilidad y buenas prácticas de desarrollo frontend.*