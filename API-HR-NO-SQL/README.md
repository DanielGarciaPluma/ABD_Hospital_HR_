# 📋 API de Gestión Hospitalaria — RH

API REST para la gestión de **personal**, **médicos**, **pacientes** e **incapacidades** en un entorno hospitalario. Construida con **Node.js / Express**, conectada a **MySQL** (datos relacionales) y **MongoDB** (datos NoSQL).

---

## 🚀 Requisitos previos

- Node.js (v18 o superior recomendado)
- MySQL activo (local o remoto)
- MongoDB activo (local o remoto)
- npm o yarn

---

## ⚙️ Instalación y ejecución

```bash

# 2. Instalar dependencias
npm install

# 3. Configurar variables de entorno
# Crear un archivo .env con las siguientes variables:
# MONGO_URI=mongodb://127.0.0.1:27017/hospital_mongo
# PORT=3000

# 4. Iniciar el servidor
node app.js
```

---

## 🗄️ Configuración de la base de datos

### Conexión MySQL — `db/connection.js`

```javascript
const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "1234",       // Cambiar aquí
  database: "hospital_rh_db",
  port: 3307,
  waitForConnections: true,
  connectionLimit: 10
});

module.exports = pool;
```

### Conexión MongoDB — `db/mongodb.js`

```javascript
const mongoose = require('mongoose');

const connectMongo = async () => {
  try {
    await mongoose.connect('mongodb://127.0.0.1:27017/hospital_mongo');
    console.log('MongoDB conectado');
  } catch (error) {
    console.error('Error Mongo:', error);
  }
};

module.exports = connectMongo;
```

> ⚠️ Asegúrate de que tanto MySQL como MongoDB estén corriendo antes de iniciar el servidor.

---

## 📌 Endpoints

### 👥 Personal

| Método | Endpoint        | Descripción              |
|--------|-----------------|--------------------------|
| POST   | `/api/personal` | Crear nuevo personal     |
| GET    | `/api/personal` | Obtener todo el personal |

### 🏥 Incapacidades

| Método | Endpoint             | Descripción                     |
|--------|----------------------|---------------------------------|
| POST   | `/api/incapacidades` | Registrar nueva incapacidad     |
| GET    | `/api/incapacidades` | Obtener todas las incapacidades |

---

## 📬 Ejemplos de Request y Response

---

### `POST /api/personal` — Crear Personal

Registra un nuevo empleado en el sistema. Se ingresan los datos del personal en formato JSON y el servidor responde con un mensaje de confirmación y el `id` generado.

**Request**
```http
POST http://localhost:3000/api/personal
Content-Type: application/json
```

```json
{
  "persona_id": 1000,
  "departamento_id": 1,
  "numero_empleado": "EMP900",
  "puesto": "Enfermero",
  "tipo_contrato": "Base",
  "fecha_ingreso": "2024-01-01",
  "salario": 9000
}
```

**Response `200 OK`**
```json
{
  "message": "Personal creado",
  "id": 26
}
```

<p align="center">
  <img src="img/insercion de personal.png" alt="Inserción de Personal" width="700"/>
</p>

---

### `GET /api/personal` — Obtener Todo el Personal

Lista todos los empleados registrados en la base de datos. No requiere parámetros. Retorna un arreglo con los datos completos de cada empleado.

**Request**
```http
GET http://localhost:3000/api/personal
Accept: */*
```

**Response `200 OK`**
```json
[
  {
    "ID": 14,
    "persona_id": 2,
    "departamento_id": 3,
    "numero_empleado": "EMP002",
    "puesto": "Analista RH",
    "tipo_contrato": "BASE",
    "fecha_ingreso": "2019-03-10T06:00:00.000Z",
    "fecha_baja": null,
    "salario": "18000.00",
    "fecha_registro": "2026-02-20T04:27:05.000Z",
    "fecha_actualizacion": null
  }
]
```

<p align="center">
  <img src="img/personal insertado.png" alt="Personal Insertado" width="700"/>
</p>

---

### 📊 Total de Registros — Personal y Médico

Conteo de registros en las tablas de personal y médicos dentro de la base de datos.

<p align="center">
  <img src="img/totalderegistro_personal_medico.png" alt="Total Registros Personal y Médico" width="700"/>
</p>

<p align="center">
  <img src="img/totalderegistrostbb_personal.png" alt="Total Registros Tabla Personal" width="700"/>
</p>

---

### `POST /api/incapacidades` — Registrar Incapacidad

Crea una nueva incapacidad asociada a un empleado. Requiere `personal_id`, `tipo`, `descripcion`, `fecha_inicio` y `fecha_fin`. El servidor responde con código `201` y el documento creado en MongoDB.

**Request**
```http
POST http://localhost:3000/api/incapacidades
Content-Type: application/json
```

```json
{
  "personal_id": 1,
  "tipo": "Enfermedad",
  "descripcion": "Gripe fuerte",
  "fecha_inicio": "2026-03-01",
  "fecha_fin": "2026-03-05"
}
```

**Response `201 Created`**
```json
{
  "message": "Incapacidad creada correctamente",
  "data": {
    "personal_id": 1,
    "tipo": "Enfermedad",
    "descripcion": "Gripe fuerte",
    "fecha_inicio": "2026-03-01T00:00:00.000Z",
    "fecha_fin": "2026-03-05T00:00:00.000Z",
    "_id": "69c659a7b22fb247170c7ef7",
    "__v": 0
  }
}
```

<p align="center">
  <img src="img/primera prueba insersion de una incapacidad.png" alt="Primera Prueba Inserción de Incapacidad" width="700"/>
</p>

---

### `GET /api/incapacidades` — Obtener Todas las Incapacidades

Lista todas las incapacidades registradas. No requiere parámetros. Retorna un arreglo con todos los documentos de la colección `incapacidades` en MongoDB.

**Request**
```http
GET http://localhost:3000/api/incapacidades
Accept: application/json
```

**Response `200 OK`**
```json
[
  {
    "_id": "69c6540bb22fb247170c7ef1",
    "personal_id": 13,
    "tipo": "Enfermedad",
    "descripcion": "Gripe fuerte",
    "fecha_inicio": "2026-03-01T00:00:00.000Z",
    "fecha_fin": "2026-03-05T00:00:00.000Z",
    "__v": 0
  },
  {
    "_id": "69c6540bb22fb247170c7ef4",
    "personal_id": 6,
    "tipo": "Accidente",
    "descripcion": "Automovilistico",
    "fecha_inicio": "2026-03-01T00:00:00.000Z",
    "fecha_fin": "2026-03-05T00:00:00.000Z",
    "__v": 0
  }
]
```

<p align="center">
  <img src="img/incapacidades ingresadas.png" alt="Incapacidades Ingresadas" width="700"/>
</p>

---

### 🗄️ Resultado en MongoDB Compass

Los documentos se almacenan en la colección `incapacidades` dentro de la base de datos `hospital_mongo`. Desde MongoDB Compass se puede visualizar cada registro con su `_id` generado automáticamente, el `personal_id` asociado, el tipo, descripción y fechas.

<p align="center">
  <img src="img/resultado en mongo.png" alt="Resultado en MongoDB Compass" width="700"/>
</p>

<p align="center">
  <img src="img/total de registros en mongo.png" alt="Total de Registros en MongoDB" width="700"/>
</p>

---

## ⚠️ Errores y Validaciones

---

### `400` — Tipo de incapacidad vacío

Si el campo `tipo` se envía vacío o no se incluye, el servidor rechaza la petición con un mensaje descriptivo.

**Request**
```json
{
  "personal_id": 27,
  "tipo": "",
  "descripcion": "Cuarentena",
  "fecha_inicio": "2026-03-01",
  "fecha_fin": "2027-03-05"
}
```

**Response `400 Bad Request`**
```json
{
  "message": "Falta el tipo de incapacidad"
}
```

<p align="center">
  <img src="img/prueba de incapacidad vacia.png" alt="Prueba Tipo Vacío" width="700"/>
</p>

---

### `400` — Fecha de fin anterior a fecha de inicio

Si `fecha_fin` es anterior a `fecha_inicio`, la API valida y rechaza la petición con un mensaje de error claro.

**Request**
```json
{
  "personal_id": 3,
  "tipo": "Enfermedad",
  "descripcion": "Error de fechas",
  "fecha_inicio": "2026-03-10",
  "fecha_fin": "2026-03-05"
}
```

**Response `400 Bad Request`**
```json
{
  "message": "La fecha de fin no puede ser anterior a la de inicio"
}
```

<p align="center">
  <img src="img/prueba de que la incapacidad debe ser mayor a la fecha creada.png" alt="Prueba Fecha Fin Anterior" width="700"/>
</p>

---

## 🛠️ Tecnologías utilizadas

- **Node.js** + **Express** — Servidor y routing
- **MySQL** (`mysql2/promise`) — Base de datos relacional
- **MongoDB** — Base de datos NoSQL
- **Mongoose** — ODM para MongoDB
- **Swagger UI** — Documentación interactiva (`/api-docs`)
- **MongoDB Compass** — Visualización de datos en BD

---

## 🗄️ Base de datos

### MySQL
- **Base de datos:** `hospital_rh_db`
- **Puerto:** `3307`
- **Tablas principales:** `personal`, `medicos`, `pacientes`

### MongoDB
- **Base de datos:** `hospital_mongo`
- **Puerto:** `27017`
- **Colecciones principales:**
  - `incapacidades` — Registros de incapacidades médicas

---

## 🗂️ Estructura del proyecto

```
API-HR/
├── controllers/
│   ├── incapacidad.controller.js
│   ├── medico.controller.js
│   ├── pacientes.controller.js
│   └── personal.controller.js
├── db/
│   ├── connection.js       # Conexión MySQL
│   └── mongodb.js          # Conexión MongoDB
├── models/
│   └── incapacidad.model.js
├── routes/
│   ├── incapacidad.routes.js
│   ├── medico.routes.js
│   ├── pacientes.routes.js
│   └── personal.routes.js
├── scripts/
│   └── volumeTest.js
├── .env
├── app.js
├── package.json
└── swagger.js
```
