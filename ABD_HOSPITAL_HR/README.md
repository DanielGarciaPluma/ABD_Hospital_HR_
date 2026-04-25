# ABD_Hospital_HR
##  Plataforma Administrativa Hospitalaria
##  Equipo HR – Recursos Humanos

---
<p align="center">
  <img src="/Image/RECUSOS HUMANOS.png" alt="Logo Material Resources" width="300"/>
</p>

---


##  Presentación del Equipo

El **Equipo HR** es el encargado de diseñar y estructurar los cimientos del módulo de **Recursos Humanos** del hospital.

Nuestro compromiso es garantizar un control preciso del personal, sus asignaciones, horarios y estructura organizacional, asegurando una gestión eficiente del capital humano que hace posible la atención médica.

##  Objetivo General
Diseñar y estructurar la base de datos del módulo de **Recursos Humanos** dentro de la plataforma administrativa hospitalaria, con el fin de centralizar, organizar y gestionar de manera eficiente la información del personal, sus asignaciones, horarios y estructura organizacional, permitiendo una administración confiable, escalable e integrada con los demás módulos del sistema hospitalario.


##  Probematica
La gestión del personal hospitalario se realiza de forma dispersa y manual, lo que provoca duplicidad de datos, dificultad para controlar horarios y asignaciones, y falta de una estructura organizacional centralizada que apoye la toma de decisiones.

---

### **Integrantes:**
* 👤 **Sayurid Bautista Cruz** | `230770`
* 👤 **Brisa Nallely Garcia Gregorio** | `230362`
* 👤 **Jennifer Bautiusta Barrios** | `230317`
* 👤 **Carlos Daniel Garcia Pluma** | `230187`

---

## 📑 Fundamentos de Base de Datos

Dentro del esquema general del proyecto, este módulo define y estructura las siguientes entidades clave:

| Prefijo | Tabla | Descripción |
|:--------|:------|:------------|
| `tbb` | `Departamentos` | Catálogo de departamentos del hospital (Administración, Enfermería, Urgencias, etc.). |
| `tbb` | `Personal` | Registro general de empleados activos en la institución. |
| `tbb` | `Personal_Medico` | Información específica del personal médico (especialidad, cédula profesional, turno). |
| `tbb` | `Personas` | Datos generales de identificación de cada colaborador. |
| `tbb` | `Personas_Fisicas` | Información legal y fiscal del empleado. |
| `tbc` | `Areas` | Definición de las áreas físicas donde se asigna el personal. |
| `tbd` | `Horarios` | Gestión de turnos, jornadas laborales y control de asistencia. |

---


# Requerimientos Funcionales – API RH

## 🔹 Gestión de Información

- **RF-01:** La API debe permitir el registro de información relacionada con el personal del hospital  
- **RF-02:** La API debe permitir la consulta de información almacenada en el sistema  
- **RF-03:** La API debe permitir la actualización de la información registrada  
- **RF-04:** La API debe permitir la eliminación de registros del sistema  

---

## 🔹 Gestión de Procesos de Recursos Humanos

- **RF-05:** La API debe permitir la gestión de procesos de reclutamiento del personal  
- **RF-06:** La API debe permitir la gestión de incapacidades del personal  
- **RF-07:** La API debe permitir la gestión de horarios del personal  

---

## 🔹 Integración de Datos

- **RF-08:** La API debe permitir la integración de información proveniente de bases de datos relacionales y no relacionales  
- **RF-09:** La API debe proporcionar endpoints que unifiquen la información de diferentes fuentes  

---

## 🔹 Requerimientos No Funcionales (RNF)

| Código | Categoría       | Descripción |
|--------|----------------|------------|
| RNF-01 | Rendimiento    | El sistema debe responder a las solicitudes en menos de 3 segundos. |
| RNF-02 | Escalabilidad  | El sistema debe soportar inserciones masivas (mínimo 100 registros). |
| RNF-03 | Disponibilidad | El sistema debe estar disponible 24/7 para el personal autorizado. |
| RNF-04 | Seguridad      | El sistema debe validar los datos antes de almacenarlos en la base de datos. |
| RNF-05 | Integridad     | Los datos deben cumplir con los esquemas definidos en MongoDB. |
| RNF-06 | Mantenibilidad | El sistema debe estar estructurado en capas (models, controllers, routes). |
| RNF-07 | Usabilidad     | El sistema debe ser accesible mediante API REST documentada en Swagger. |

---

## 🔹 Reglas de Negocio

### 📌 Reclutamiento

- **RN-01:** Todo proceso de reclutamiento debe estar asociado a una vacante  
- **RN-02:** Un candidato debe tener un estado válido:  
  `Postulado | Entrevista | Psicométrico | Contratado | Rechazado`  
- **RN-03:** No se puede contratar a un candidato sin haber pasado por al menos una etapa  
- **RN-04:** Cada proceso debe tener un responsable asignado  

---

### ⏰ Horarios

- **RN-05:** Todo horario debe estar asociado a un miembro del personal  
- **RN-06:** El tipo de horario debe ser uno de los siguientes:  
  `Cambio | Guardia | Permiso | Extra`  
- **RN-07:** Un horario debe tener fecha obligatoria  
- **RN-08:** No se deben asignar horarios duplicados al mismo personal en la misma fecha  

---

### 🏥 Incapacidades

- **RN-09:** Toda incapacidad debe tener fecha de inicio y fin  
- **RN-10:** La fecha de fin debe ser posterior a la fecha de inicio  
- **RN-11:** El estado de la incapacidad debe ser: `Activa | Finalizada`  
- **RN-12:** El número de días de incapacidad debe ser mayor a cero  

---

# 🗄️ Modelo SQL (Relacional)

## 🔹 Implementación de Tablas

### 📋 Tablas del sistema

- `personas`
- `personas_fisicas`
- `personal`
- `personal_medico`
- `departamentos`
- `horarios_generales`
- `medios_contacto`

---

## 🔹 Llaves Primarias y Foráneas

### Relaciones clave

- `personas (id_persona)` → **PK**
- `personas_fisicas (persona_id)` → **FK**
- `personal (persona_id)` → **FK**
- `personal_medico (personal_id)` → **FK**
- `horarios_generales (personal_id)` → **FK**
- `medios_contacto (persona_id)` → **FK**
- `personal (departamento_id)` → **FK**

---

## 🔹 Integridad Referencial

```sql
FOREIGN KEY (persona_id) REFERENCES personas(id_persona);
FOREIGN KEY (personal_id) REFERENCES personal(id_personal);
FOREIGN KEY (departamento_id) REFERENCES departamentos(id_departamento);