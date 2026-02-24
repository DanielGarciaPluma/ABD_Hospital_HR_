# 👥 Respaldo – Usuarios, Roles y Privilegios
## Base de Datos – Módulo de Recursos Humanos

---

## 📖 Descripción General

Esta carpeta contiene el respaldo relacionado con la **configuración de usuarios, roles y asignación de privilegios** dentro del motor de base de datos del sistema hospitalario.

El script almacenado aquí permite recrear la estructura de seguridad necesaria para el correcto funcionamiento del módulo de Recursos Humanos.

---

## 📦 ¿Qué incluye este respaldo?

El archivo contiene instrucciones SQL para:

### 1️⃣ Creación de Usuarios

Se crean los usuarios del equipo de desarrollo mediante la instrucción `CREATE USER IF NOT EXISTS`, permitiendo su reutilización sin generar errores si ya existen.

Usuarios incluidos:

* carlos.garcia
* brisa.garcia
* sayurid.bautista
* jennifer.bautista

---

### 2️⃣ Creación de Roles

Se definen roles del sistema utilizando `CREATE ROLE IF NOT EXISTS`, tales como:

* developer
* patient
* nurse
* medic
* ge_user
* mr_user
* hr_user
* ph_user
* md_user
* ms_user

Estos roles permiten administrar permisos de manera estructurada y escalable.

---

### 3️⃣ Asignación de Roles a Usuarios

Todos los usuarios del equipo tienen asignados los roles:

* developer
* hr_user

Esto se realiza mediante la instrucción `GRANT`.

---

### 4️⃣ Activación de Roles por Defecto

Se establece el uso automático de los roles asignados al iniciar sesión utilizando:

`SET DEFAULT ROLE`

Esto garantiza que los permisos estén activos sin necesidad de activación manual.

---

### 5️⃣ Verificación de Permisos

El script incluye consultas `SHOW GRANTS` para:

* Verificar los privilegios de cada usuario
* Confirmar la configuración de roles específicos

Esto permite validar correctamente la configuración tras su ejecución.

---

## 🎯 Objetivo

Permitir la restauración completa de la configuración de seguridad del sistema, asegurando:

✔ Consistencia en entornos de desarrollo
✔ Replicación de accesos en nuevos servidores
✔ Control estructurado de permisos
✔ Seguridad en el módulo de Recursos Humanos

---

## 🛡️ Importancia

La gestión adecuada de usuarios y roles es fundamental para:

* Proteger la información sensible del personal hospitalario
* Evitar accesos no autorizados
* Mantener una arquitectura de seguridad organizada
* Facilitar auditorías y control de permisos

---

## 🔐 Consideraciones

Este archivo debe manejarse con precaución, ya que contiene configuraciones de acceso al sistema gestor de base de datos.

Se recomienda:

* No exponer públicamente credenciales reales en producción
* Ejecutar el script únicamente por administradores
* Verificar compatibilidad con la versión del motor de base de datos

---

<p align="center">
🔐 Seguridad estructurada y control de acceso para una gestión hospitalaria confiable
</p>
