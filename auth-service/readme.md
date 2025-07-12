# Auth Service - MasterBikes

<div align="center">
  <img src="../frontend/images/logos/logo.svg" alt="MasterBikes" width="120"/>
</div>

<h1>🔐 Auth Service - MasterBikes</h1>
<h3>Servicio de autenticación (EN DESARROLLO)</h3>
<p><b>Spring Boot · JWT · BCrypt · MySQL · Spring Security</b></p>

---

## ⚠️ Estado actual: COMPILACIÓN CON ERRORES

**Este servicio NO compila actualmente** debido a errores en el modelo Usuario. Presenta errores de tipo:
```
cannot find symbol: method setRol(masterbikes.model.enums.Rol)
```

## 📁 Estructura del proyecto

```text
auth-service/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── masterbikes/
│   │   │       ├── AuthServiceApplication.java
│   │   │       ├── Main.java (archivo de prueba)
│   │   │       ├── config/
│   │   │       │   └── SecurityConfig.java
│   │   │       ├── controller/
│   │   │       │   ├── AuthController.java
│   │   │       │   └── UsuarioController.java
│   │   │       ├── dto/
│   │   │       │   ├── LoginRequest.java
│   │   │       │   ├── LoginResponse.java
│   │   │       │   └── RegistroRequest.java
│   │   │       ├── model/
│   │   │       │   └── Usuario.java
│   │   │       ├── repository/
│   │   │       │   └── UsuarioRepository.java
│   │   │       ├── service/
│   │   │       │   └── UsuarioService.java
│   │   │       └── util/
│   │   │           └── JwtUtil.java
│   │   └── resources/
│   │       └── application.properties
│   └── test/
├── target/
└── pom.xml
```

## 🚦 Descripción

Servicio diseñado para autenticación y gestión de usuarios, pero **actualmente no funcional**. Tiene implementada la estructura básica para JWT, manejo de roles y operaciones CRUD, pero presenta errores de compilación que impiden su ejecución.

**Puerto configurado:** `8081` (no funcional)

## 🔗 Endpoints planificados (NO FUNCIONALES)

### Autenticación (`/auth`)
- `POST /auth/login` — Autenticación de usuario (NO FUNCIONA)
- `POST /auth/register` — Registro de nuevo usuario (NO FUNCIONA)

### Gestión de usuarios (`/api/usuarios`)
- `GET /api/usuarios` — Listar todos los usuarios (NO FUNCIONA)
- `POST /api/usuarios` — Crear nuevo usuario (NO FUNCIONA)
- `PUT /api/usuarios/{id}` — Actualizar usuario (NO FUNCIONA)
- `DELETE /api/usuarios/{id}` — Eliminar usuario (NO FUNCIONA)

## 🏗️ Lo que está implementado (pero con errores)

### Código existente
- **Controladores:** AuthController y UsuarioController con endpoints completos
- **Servicios:** UsuarioService con lógica de negocio
- **DTOs:** Para requests y responses
- **Configuración:** Spring Security básica
- **Modelo:** Usuario con campos necesarios pero con problemas de compilación

### Problemas identificados
1. **Errores de compilación** en UsuarioService.java línea 67
2. **Modelo Usuario** con problemas en setters/getters para enum Rol
3. **Sin integración real** con el frontend
4. **Base de datos** no configurada correctamente

## 🛠️ Estado del desarrollo

### ✅ Lo que funciona
- Estructura del proyecto
- Configuración básica de Spring Boot
- DTOs y requests/responses definidos

### ❌ Lo que NO funciona
- **Compilación:** El servicio no compila
- **Ejecución:** No se puede levantar el servicio
- **Integración:** Frontend no se conecta con este servicio
- **Base de datos:** Conexión y entidades no configuradas

### 🔧 Para que funcione necesita
1. **Arreglar errores de compilación** en Usuario.java y UsuarioService.java
2. **Configurar base de datos** MySQL correctamente
3. **Probar endpoints** individualmente
4. **Integrar con API Gateway** (ya configurado pero no probado)
5. **Conectar con frontend** para login real

---

**Estado:** ⚠️ Proyecto de segundo año - Servicio en desarrollo con errores de compilación
