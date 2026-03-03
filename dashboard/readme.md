# 📊 Dashboard de Pacientes

## Descripción General

Este directorio contiene el **Dashboard Interactivo de Pacientes** desarrollado con **Navicat BI**, una herramienta de inteligencia empresarial que permite visualizar y analizar datos de la base de datos de pacientes de forma dinámica y visual.

El dashboard utiliza **datos simulados** para demostrar la capacidad analítica del sistema, mostrando patrones de dispersión y distribuciones que reflejan escenarios reales de gestión de pacientes.

---

## 📁 Estructura de Archivos

```
dashboard/
├── dashboard_pacientes_nbi            # Este archivo contiene las gracifa de los datos
├── readme.md                          # Este archivo (guía principal)
```

---

## 🎯 Características Principales


### 1. **Visualizaciones de Datos**
- Gráficos de dispersión de edades y distribución de pacientes
- Histogramas de frecuencia
- Tablas interactivas con datos agregados
- Mapas de calor (heatmaps) de concentración

### 2. **Análisis de Dispersión de Datos**
- Distribución de edades en la población de pacientes
- Análisis de variabilidad en indicadores de salud simulados
- Correlación entre variables demográficas
- Identificación de outliers y datos atípicos

### 3. **Interactividad**
- Filtros dinámicos por rango de edad, género y estado
- Actualización en tiempo real de visualizaciones
- Exportación de datos y reportes
- Navegación entre diferentes vistas analíticas

---

## 🚀 Inicio Rápido

1. **Abrir el dashboard**: Haz doble clic en `dashboard_pacientes.nbi`
2. **Explorar datos**: Utiliza los filtros interactivos en el panel lateral
3. **Analizar visualizaciones**: Examina los gráficos y tablas dinámicas
4. **Exportar resultados**: Descarga reportes en formato PDF o Excel

Ver [GUIA_USO.md](GUIA_USO.md) para instrucciones detalladas.

---

## 📊 Conjuntos de Datos

El dashboard visualiza datos simulados que incluyen:

- **Pacientes**: Información demográfica y de identificación
- **Edades**: Distribución simulada (18-85 años)
- **Género**: Clasificación binaria (M/F)
- **Estado de Paciente**: Activo, Inactivo, En Seguimiento
- **Indicadores de Salud**: Datos simulados para análisis

Consulta [DATOS_SIMULADOS.md](DATOS_SIMULADOS.md) para más detalles.

---

## 📈 Interpretación de Gráficas

### Gráfica de Dispersión
La dispersión de datos se representa en coordenadas cartesianas donde:
- **Eje X**: Edad del paciente
- **Eje Y**: Indicador de salud o frecuencia de consultas
- **Punto**: Representa un paciente individual
- **Concentración**: Áreas densas indican patrones comunes

### Histogramas
Muestran la frecuencia de ocurrencia de valores en rangos específicos, permitiendo identificar modas y distribuciones.

Más información en [ANALISIS_VISUALES.md](ANALISIS_VISUALES.md).

---

## 🛠️ Tecnologías Utilizadas

| Tecnología | Propósito |
|---|---|
| **Navicat BI** | Herramienta de visualización e BI |
| **SQL** | Consultas y datos de base de datos |
| **Base de Datos** | MySQL / MariaDB |
| **Datos Simulados** | Análisis y demostración |

---

## 📋 Requisitos

- **Navicat Premium** o **Navicat BI** instalado
- **Conexión a base de datos** configurada
- **Acceso a tabla de pacientes** con datos simulados
- Navegador moderno (para visualizaciones web si aplica)

---

## 📝 Notas Importantes

- ⚠️ Los datos mostrados son **simulados** para propósitos de demostración y análisis
- 📊 Los análisis representan patrones realistas pero no datos reales de pacientes
- 🔒 En producción, se deben aplicar protocolos de seguridad y privacidad
- 🔄 El dashboard se actualiza automáticamente al cambiar los datos en la base de datos

---

## 🔗 Enlaces Relacionados

- [Documentación de Datos Simulados](DATOS_SIMULADOS.md)
- [Guía Completa de Uso](GUIA_USO.md)
- [Análisis de Visualizaciones](ANALISIS_VISUALES.md)
- [Estructura General del Proyecto](/readme.md)

---

## 👤 Autor

Sistema de Gestión de Pacientes - Práctica 05  
Base de Datos Avanzada (ABD)

**Fecha de Creación**: Febrero 2026  
**Última Actualización**: Febrero 2026

---

## 📞 Soporte

Para reportar problemas o sugerencias sobre el dashboard, consulta la documentación complementaria o revisa los logs de conexión en Navicat.

