# 🧪 Pruebas de Base de Datos  
## Módulo de Recursos Humanos

---

## 📖 Descripción

Esta carpeta contiene la documentación y/o scripts utilizados para realizar pruebas sobre la base de datos del módulo de Recursos Humanos.

Las pruebas permiten verificar el correcto funcionamiento de la estructura, restricciones, funciones y procedimientos almacenados implementados en el sistema.

---

## 🎯 Objetivo

- Validar la integridad de las tablas y relaciones.
- Comprobar el correcto funcionamiento de funciones y procedimientos almacenados.
- Detectar posibles inconsistencias en los datos.
- Garantizar estabilidad antes de la integración con otros módulos.

---

## 📌 Consideraciones
Carpeta de pruebas realizadas a los procedimientos almacenados y sus funciones relacionadas en la base de datos

### Test 1 - Registro de 1 Paciente
###### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(1, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/1.png" alt="Prueba 1" width="full"/></p>

###### Datos insertados:
tbb_pacientes:
<p align="center"><img src="./image/1.1.png" alt="Prueba 1" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/1.3.png" alt="Prueba 1" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/1.2.png" alt="Prueba 1" width="full"/></p>
---

### Test 2 - Registro de 10 Pacientes

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(10, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/10.png" alt="Prueba 2" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/10.1.png" alt="Prueba 2" width="full"/></p>
tbb_personas:
<p align="center"><img src="./image/10.3.png" alt="Prueba 2" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/10.2.png" alt="Prueba 2" width="full"/></p>

---

### Test 3 - Registro de 100 Pacientes

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(100, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/100.png" alt="Prueba 3" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/100.1.png" alt="Prueba 3" width="full"/></p>

tbb_personas:
<p align="center"><img src="./image/100.2.png" alt="Prueba 3" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/100.3.png" alt="Prueba 3" width="full"/></p>
---

### Test 4 - Registro de 1000 Pacientes

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(1000, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/1000.png" alt="Prueba 4" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/1000.1.png" alt="Prueba 4" width="full"/></p>

tbb_personas:
<p align="center"><img src="./image/1000.2.png" alt="Prueba 4" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/1000.3.png" alt="Prueba 4" width="full"/></p>

---

### Test 5 - Registro de 10000 Pacientes

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(10000, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/10000.png" alt="Prueba 5" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/10000.1.png" alt="Prueba 5" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/10000.2.png" alt="Prueba 5" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/10000.3.png" alt="Prueba 5" width="full"/></p>

---

### Test 6 - Registro de 1000000 Pacientes

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(1000000, NULL, NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/1M.png" alt="Prueba 6" width="full"/></p>

##### Datos insertados:

tbb_pacientes:

<p align="center"><img src="./image/1M.1.png" alt="Prueba 6" width="full"/></p>
tbb_personas:
<p align="center"><img src="./image/1M.2.png" alt="Prueba 6" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/1M.3.png" alt="Prueba 6" width="full"/></p>

---

### Test 7 - Registro de 150 Pacientes Mujeres

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(150, 'M', NULL, NULL, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/7.png" alt="Prueba 7" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/7.1.png" alt="Prueba 7" width="full"/></p>

tbb_personas:
<p align="center"><img src="./image/7.2.png" alt="Prueba 7" width="full"/></p>

tbb_personas_fisicas:
<p align="center"><img src="./image/7.3.png" alt="Prueba 7" width="full"/></p>



---

### Test 8 - Registro de 340 Pacientes varones de entre 20 y 30 años

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(340, 'H', 20, 30, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/8.5.png" alt="Prueba 8" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/8.1.png" alt="Prueba 8" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/8.2.png" alt="Prueba 8" width="full"/></p>



tbb_personas_fisicas:
<p align="center"><img src="./image/8.3.png" alt="Prueba 8" width="full"/></p>



---

### Test 9 - Registro de 500 Pacientes de edad maxima de 65 años

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(500, NULL, NULL, 65, NULL, NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/9.6.png" alt="Prueba 9" width="full"/></p>

##### Datos insertados:

tbb_pacientes:

<p align="center"><img src="./image/9.1.png" alt="Prueba 9" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/9.3.png" alt="Prueba 9" width="full"/></p>


tbb_personas_fisicas:
<p align="center"><img src="./image/9.2.png" alt="Prueba 9" width="full"/></p>



---

### Test 10 - Registro de 2200 Pacientes Vivos

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(2200, NULL, NULL, NULL, 'Vivo', NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/p10.png" alt="Prueba 6" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/p10.1.png" alt="Prueba 11" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/p10.2.png" alt="Prueba 11" width="full"/></p>


tbb_personas_fisicas:
<p align="center"><img src="./image/p10.3.png" alt="Prueba 11" width="full"/></p>


---

### Test 11 - Registro de 502 Pacientes Mujeres Finados mayores de 45 años

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(502, 'M', NULL, 45, 'Finado', NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/11.png" alt="Prueba 12" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/11.1.png" alt="Prueba 11" width="full"/></p>


tbb_personas_fisicas:
<p align="center"><img src="./image/11.2.png" alt="Prueba 11" width="full"/></p>

---

### Test 12 - Registro de 30 Pacientes en estado de Coma

##### Comando utilizado:
    
    call hospital_rh_db.sp_poblar_pacientes(30, NULL, NULL, NULL, 'Coma', NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/12.png" alt="Prueba 12" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/12.1.png" alt="Prueba 12" width="full"/></p>


tbb_personas:
<p align="center"><img src="./image/12.2.png" alt="Prueba 12" width="full"/></p>


tbb_personas_fisicas:

<p align="center"><img src="./image/12.3.png" alt="Prueba 12" width="full"/></p>
---

### Test 13 - Registro de 15 Pacientes en estado Vegetativo

##### Comando utilizado:
    
    call hospital_230260.sp_poblar_pacientes(15, NULL, NULL, NULL, 'Vegetativo', NULL, NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/13.jpeg" alt="Prueba 13" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/13.1.jpeg" alt="Prueba 13" width="full"/></p>

tbb_personas:
<p align="center"><img src="./image/13.2.jpeg" alt="Prueba 12" width="full"/></p>

tbb_personas_fisicas:

<p align="center"><img src="./image/13.3.jpeg" alt="Prueba 12" width="full"/></p>

##### Datos insertados:
*(se muestran los ultimos 3 registros insertados)*



tbb_pacientes:
| ID | estatus_medico | estatus_vidas | fecha_ultima_cita_medica | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4010 |  | Vegetativo | 2026-02-16 18:54:26 | 2026-02-16 18:54:26 | NULL | 1 |
| 4009 |  | Vegetativo | 2026-02-16 18:54:26 | 2026-02-16 18:54:26 | NULL | 1 |
| 4008 |  | Vegetativo | 2026-02-16 18:54:26 | 2026-02-16 18:54:26 | NULL | 1 |

tbb_personas:
| ID | tipo | rfc | pais_origen | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4010 | Física | CALH940216UR9 | Argentina | 2026-02-16 18:54:26 | NULL | 1 |
| 4009 | Física | CUSM840216VJ3 | Argentina | 2026-02-16 18:54:26 | NULL | 1 |
| 4008 | Física | POIN860216WL5 | Canadá | 2026-02-16 18:54:26 | NULL | 1 |

tbb_personas_fisicas:
| ID | titulo_cortesia | nombre | primer_apellido | segundo_apellido | genero | fecha_nacimiento | curp | grupo_sanguineo | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 4010 | Abgda. | Héctor | Chacon | Lopez | H | 1994-02-16 | CALH940216HNEHPC8 | B- | 2026-02-16 18:54:26 | NULL | 1 |
| 4009 | Mx. | Martín | Cruz | Silva | H | 1984-02-16 | CUSM840216HNERLR3 | A- | 2026-02-16 18:54:26 | NULL | 1 |
| 4008 | Arq. | Noé | Portillo | Ibarra | H | 1986-02-16 | POIN860216HNERBX10 | O+ | 2026-02-16 18:54:26 | NULL | 1 |

---

### Test 14 - Registro de 107 Pacientes en estado médico "Cuidados Paliativos" 

##### Comando utilizado:
    
    call hospital_230260.sp_poblar_pacientes(107, NULL, NULL, NULL, NULL, 'Cuidados Paliativos', NULL);

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/14.jpeg" alt="Prueba 14" width="full"/></p>

##### Datos insertados:

tbb_pacientes:
<p align="center"><img src="./image/14.1.jpeg" alt="Prueba 13" width="full"/></p>

tbb_personas:
<p align="center"><img src="./image/14.2.jpeg" alt="Prueba 12" width="full"/></p>

tbb_personas_fisicas:

<p align="center"><img src="./image/14.3.jpeg" alt="Prueba 12" width="full"/></p>


##### Datos insertados:
*(se muestran los ultimos 3 registros insertados)*

tbb_pacientes:
| ID | estatus_medico | estatus_vidas | fecha_ultima_cita_medica | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4117 | Cuidados Paliativos | Vivo | 2026-02-16 19:04:25 | 2026-02-16 19:04:25 | NULL | 1 |
| 4116 | Cuidados Paliativos | Vivo | 2026-02-16 19:04:25 | 2026-02-16 19:04:25 | NULL | 1 |
| 4115 | Cuidados Paliativos | Vivo | 2026-02-16 19:04:25 | 2026-02-16 19:04:25 | NULL | 1 |

tbb_personas:
| ID | tipo | rfc | pais_origen | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4117 | Física | FUGF790216QK1 | Canadá | 2026-02-16 19:04:25 | NULL | 1 |
| 4116 | Física | OESM860216LQ9 | Colombia | 2026-02-16 19:04:25 | NULL | 1 |
| 4115 | Física | RIHM880216GI8 | México | 2026-02-16 19:04:25 | NULL | 1 |

tbb_personas_fisicas:
| ID | titulo_cortesia | nombre | primer_apellido | segundo_apellido | genero | fecha_nacimiento | curp | grupo_sanguineo | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 4117 | Enf. | Frida | Fuentes | Garcia | M | 1979-02-16 | FUGF790216MNENRR10 | AB+ | 2026-02-16 19:04:25 | NULL | 1 |
| 4116 | Psic. | Miranda | Ortega | Serrano | M | 1986-02-16 | OESM860216MNERRR2 | B- | 2026-02-16 19:04:25 | NULL | 1 |
| 4115 | Mtro. | Miranda | Rivera | Huerta | M | 1988-02-16 | RIHM880216MNEVRR10 | O+ | 2026-02-16 19:04:25 | NULL | 1 |

---

### Test 15 - Registro de 208 Pacientes Pediátricos 

##### Comando utilizado:
    
    call hospital_230260.sp_poblar_pacientes(208, NULL, NULL, NULL, NULL, NULL, 'Pediátrico');

###### Evidencia de ejecución exitosa:

<p align="center"><img src="./image/15.jpeg" alt="Prueba 15" width="full"/></p>


##### Datos insertados:
*(se muestran los ultimos 3 registros insertados)*

tbb_pacientes:
| ID | estatus_medico | estatus_vidas | fecha_ultima_cita_medica | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4325 |  | Vivo | 2026-02-16 19:09:15 | 2026-02-16 19:09:15 | NULL | 1 |
| 4324 |  | Vivo | 2026-02-16 19:09:15 | 2026-02-16 19:09:15 | NULL | 1 |
| 4323 |  | Vivo | 2026-02-16 19:09:15 | 2026-02-16 19:09:15 | NULL | 1 |

tbb_personas:
| ID | tipo | rfc | pais_origen | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|
| 4325 | Física | CARF210216SF9 | México | 2026-02-16 19:09:15 | NULL | 1 |
| 4324 | Física | REME110216VA6 | México | 2026-02-16 19:09:15 | NULL | 1 |
| 4323 | Física | DOCL110216ZN5 | Canadá | 2026-02-16 19:09:15 | NULL | 1 |

tbb_personas_fisicas:
| ID | titulo_cortesia | nombre | primer_apellido | segundo_apellido | genero | fecha_nacimiento | curp | grupo_sanguineo | fecha_registro | fecha_actualizacion | estatus |
|---|---|---|---|---|---|---|---|---|---|---|---|
| 4325 | Niña | Frida | Cantu | Rivera | M | 2021-02-16 | CARF210216MNENVR5 | O+ | 2026-02-16 19:09:15 | NULL | 1 |
| 4324 | Joven | Estefanía | Resendiz | Marquez | M | 2011-02-16 | REME110216MNESRS1 | AB+ | 2026-02-16 19:09:15 | NULL | 1 |
| 4323 | Joven | Lucía | Dominguez | Carrillo | M | 2011-02-16 | DOCL110216MNEMRC8 | B+ | 2026-02-16 19:09:15 | NULL | 1 |