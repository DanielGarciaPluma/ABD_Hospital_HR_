# API_HR
## 🌐 API REST – Gestión de Pacientes
## 🏥 Plataforma Administrativa Hospitalaria

---
Cracion de la rama Jenni_dev

## 📖 Descripción

La carpeta API-HR contiene la implementación de una API REST desarrollada con Express para interactuar con la base de datos del sistema hospitalario. Este módulo permite consultar pacientes, generar registros de prueba mediante procedimientos almacenados y eliminar pacientes desde la base de datos.


---

## 🎯 Objetivo del Módulo

- Facilitar la carga de datos simulados desde procedimientos almacenados.
- Permitir consulta rápida de registros de pacientes.
- Centralizar la lógica de acceso a la base de datos desde el backend.
- Proveer documentación técnica para pruebas e integración.

---

## 📂 Estructura de la Carpeta API-HR

| Archivo / Carpeta | Descripción |
|---|---|
| app.js | Punto de entrada del servidor Express. |
| swagger.js | Configuración de Swagger y especificación OpenAPI. |
| package.json | Dependencias y metadatos del módulo. |
| db/ | Configuración de conexión a MySQL. |
| controllers/ | Lógica de negocio de pacientes. |
| routes/ | Definición de endpoints REST. |
---

## ⚙️ Tecnologías Utilizadas

| Tecnología | Propósito |
|---|---|
| Node.js | Entorno de ejecución del backend |
| Express | Framework para la API REST |
| MySQL | Cliente de conexión a MySQL |
| Swagger UI Express | Visualización de documentación de endpoints |
| Swagger JSDoc | Generación de especificación OpenAPI |
| MySQL  | Motor de base de datos |

---

## 🔌 Configuración Actual

La conexión del módulo está definida actualmente con los siguientes valores:

- Host: localhost
- Puerto MySQL: 3307
- Base de datos: hospital_rh_db
- Usuario: root

El servidor HTTP se ejecuta en:

- API: http://localhost:3000
- Swagger: http://localhost:3000/api-docs

---


## 📡 Endpoints Disponibles

### 1. Obtener pacientes

- Método: GET
- Ruta: /api/pacientes
- Descripción: Devuelve hasta 100 pacientes con datos generales y estado médico.

### 2. Generar pacientes

- Método: POST
- Ruta: /api/pacientes/generar
- Descripción: Ejecuta el procedimiento almacenado sp_poblar_pacientes para insertar pacientes simulados.

Ejemplo de cuerpo JSON:

```json
{
	"cantidad": 10,
	"genero": "hombre",
	"edad_min": 18,
	"edad_max": 60,
	"estado_vida": "vivo",
	"estado_medico": "Estable",
	"tipo_edad": "adulto"
}
```

### 3. Eliminar paciente

- Método: DELETE
- Ruta: /api/pacientes/:id
- Descripción: Elimina un paciente de las tablas relacionadas usando su identificador.

### 4. Generación masiva

- Método: POST
- Ruta implementada actualmente: /api/pacientes/pacientes/generar-masivo
- Descripción: Ejecuta el procedimiento almacenado sp_poblar_pacientes_fast para una carga masiva.

Ejemplo de cuerpo JSON:

```json
{
	"cantidad": 1000
}
```

---

## 🧠 Lógica del Módulo

El controlador de pacientes implementa las siguientes operaciones principales:

- Consulta de pacientes desde tbb_pacientes, tbb_personas y tbb_personas_fisicas.
- Generación de pacientes mediante procedimientos almacenados.
- Inserción masiva orientada a pruebas de carga de datos.
- Eliminación encadenada de registros relacionados por persona_id.

---


## ⚠️ Notas Importantes

- La API utiliza actualmente una configuración de conexión definida directamente en el código.
- El módulo incluye la dependencia dotenv, aunque la conexión activa se encuentra configurada en db/connection.js.

---

## 🔄 Integración con el Proyecto

Este módulo funciona como capa de acceso para operaciones relacionadas con pacientes y puede ser consumido por dashboards, pruebas, integraciones futuras o clientes frontend que requieran consultar y poblar información de ejemplo en el sistema hospitalario.

---

## 👤 Autor

Sistema de Gestión Hospitalaria - Módulo API HR  
Base de Datos Avanzada (ABD)

Fecha de Creación: Marzo 2026  
Última Actualización: Marzo 2026
