# DB_Hospital_HR  
## 🗄️ Base de Datos – Recursos Humanos  
## 🏥 Plataforma Administrativa Hospitalaria


---

## 📖 Descripción

La carpeta **`db/`** contiene la estructura completa de la Base de Datos del Módulo de Recursos Humanos del sistema hospitalario.

Aquí se almacenan los scripts SQL, diagramas, rutinas, respaldos y pruebas necesarias para garantizar la correcta gestión del personal del hospital, asegurando integridad, seguridad y consistencia en la información.

Este módulo constituye uno de los pilares fundamentales del sistema, ya que administra el capital humano que permite el correcto funcionamiento de la institución médica.

---

## 🎯 Objetivo del Módulo

- Diseñar y estructurar la base de datos del área de Recursos Humanos.
- Garantizar integridad y consistencia de los datos.
- Administrar información del personal hospitalario.
- Gestionar departamentos, áreas y horarios.
- Permitir escalabilidad y mantenimiento del sistema.

---

## 📂 Estructura de la Carpeta `db/`

| Carpeta | Descripción |
|----------|-------------|
| `scripts/` | Archivos SQL de creación y modificación de la base de datos. |
| `routines/` | Procedimientos almacenados, funciones y triggers. |
| `backups/` | Respaldos de seguridad de la base de datos. |
| `Diagram/` | Diagramas entidad–relación y modelos de datos. |
| `tests/` | Scripts de validación y pruebas de integridad. |

---

## 🗂️ Entidades Principales del Modelo

| Prefijo | Tabla | Descripción |
|:--------|:------|:------------|
| `tbb` | `Departamentos` | Catálogo de departamentos hospitalarios. |
| `tbb` | `Personal` | Registro general de empleados. |
| `tbb` | `Personal_Medico` | Información específica del personal médico. |
| `tbb` | `Personas` | Datos generales de identificación. |
| `tbb` | `Personas_Fisicas` | Información fiscal y legal del empleado. |
| `tbc` | `Areas` | Áreas físicas donde se asigna el personal. |
| `tbd` | `Horarios` | Gestión de turnos y jornadas laborales. |

---

## 🔐 Integridad y Control

El diseño contempla:

- Claves primarias y foráneas.
- Restricciones de integridad (NOT NULL, UNIQUE).
- Índices para optimización de consultas.
- Control estructural mediante scripts versionados.
- Automatización mediante procedimientos almacenados.

---

## 🏗️ Convenciones Implementadas

- Uso de prefijos estandarizados (`tbb`, `tbc`, `tbd`).
- Nomenclatura consistente para facilitar integración.
- Versionado de scripts.
- Separación de responsabilidades por carpeta.
- Documentación clara y estructurada.

---

## 🚀 Estado del Proyecto

El módulo se encuentra en fase de:

- ✅ Diseño estructural del modelo de datos.
- ✅ Definición de entidades y relaciones.
- 🔄 Preparación para integración con los demás módulos del sistema hospitalario.

---

## ⚠️ Aviso de Integración

Este módulo respeta la nomenclatura y lineamientos generales del proyecto con el fin de facilitar la integración (merge) con los demás componentes desarrollados por otros equipos del sistema hospitalario.

---

## 📌 Buenas Prácticas

- Versionar todos los cambios mediante Git.
- No modificar scripts ya ejecutados en producción.
- Crear nuevos scripts para modificaciones.
- Realizar respaldos antes de aplicar cambios.
- Probar siempre en entorno de desarrollo antes de producción.