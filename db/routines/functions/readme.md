# 🧮 Funciones Almacenadas – Base de Datos

## 📂 Módulo de Recursos Humanos

---

<p align="center">
  <img src="/Image/RECUSOS HUMANOS.png" alt="Logo Recursos Humanos" width="300"/>
</p>

---

## 📖 Descripción General

La carpeta `functions` contiene las funciones almacenadas del **Módulo de Recursos Humanos** del sistema hospitalario.

Estas funciones encapsulan lógica reutilizable dentro del motor de base de datos, permitiendo realizar cálculos, validaciones y generación automática de datos de forma estructurada y eficiente.

Su implementación fortalece la organización interna del sistema y mejora la consistencia en la lógica de negocio.

---

## 📦 Estructura de la Carpeta

functions/
│
├── fn_antiguedad_personal.sql
├── fn_calcular_edad.sql
├── fn_genera_bandera.sql
├── fn_genera_bandera_porcentaje.sql
├── fn_genera_fecha_nacimiento.sql
├── fn_numero_aleatorio_rangos.sql
├── fn_random_string.sql
└── tipo_sangre_aleatorio.sql

---

## 🔎 Funcionalidades Principales

### 📅 Cálculos Automáticos

Incluye funciones para:

* Calcular edad de empleados
* Determinar antigüedad laboral
* Generar fechas de nacimiento dentro de rangos definidos

---

### 🎲 Generación de Datos

Permite:

* Generar números aleatorios por rango
* Crear cadenas aleatorias
* Asignar tipos de sangre aleatorios
* Evaluar banderas lógicas y porcentuales

---

## 🎯 Objetivo del Directorio Functions

Garantizar:

Centralización de lógica reutilizable
Consistencia en cálculos críticos
Reducción de código repetitivo
Optimización de consultas SQL
Soporte a procedimientos almacenados

---

## 🛡️ Buenas Prácticas Recomendadas

Crear primero las funciones antes de procedimientos dependientes
Validar tipos de datos y valores nulos
Documentar parámetros y retorno
Probar cada función individualmente
Mantener control de versiones

---

## 🔐 Importancia Estratégica

Las funciones almacenadas permiten mantener reglas de negocio directamente en la base de datos, asegurando coherencia, rendimiento y mantenimiento simplificado en un entorno hospitalario donde la precisión de datos es fundamental.

---

<p align="center">
Precisión y lógica estructurada para una gestión hospitalaria eficiente
</p>

---