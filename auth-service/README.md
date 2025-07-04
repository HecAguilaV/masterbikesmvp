<div align="center">
  <img src="../frontend/images/logo.svg" alt="MasterBikes" width="120"/>
  <h1>🔐 Auth Service - MasterBikes</h1>
  <h3>Autenticación y gestión de usuarios</h3>
  <p><b>Spring Boot · JWT · Seguridad · Sello MasterBikes</b></p>
</div>

---

## 📁 Estructura de directorios

```text
auth-service/
├── pom.xml
├── README.md
└── ...
```

## 🚦 Descripción

Servicio de autenticación y gestión de usuarios para MasterBikes. Permite login, registro y control de roles.

---

## 🔗 Endpoints principales

### Autenticación

- `POST /auth/login` — Login de usuario. Devuelve JWT y rol.
- `POST /api/usuarios/registro` — Registro de usuario (rol CLIENTE por defecto).

### Usuarios (CRUD)

- `GET /api/usuarios` — Listar usuarios (solo para roles con permisos).
- `PUT /api/usuarios/{id}` — Editar usuario.
- `DELETE /api/usuarios/{id}` — Eliminar usuario.

---

## 🛡️ Roles soportados

- `ADMIN`: Gestión total (usuarios, roles, etc.).
- `SUPERVISOR`: Gestión parcial.
- `TECNICO`, `VENDEDOR`, `CLIENTE`: Acceso según permisos.

---

## 🔒 Seguridad

- JWT requerido para endpoints protegidos.
- Roles y permisos definidos en base a Spring Security.

---

## 🛠️ Próximos pasos

- Completar endpoints de perfil y recuperación de contraseña.
- Mejorar documentación y ejemplos de requests/responses.

---

> ℹ️ *Verifica la configuración de seguridad y los roles en el archivo de propiedades.*
