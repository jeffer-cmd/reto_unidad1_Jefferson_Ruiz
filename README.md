Proyecto reto unidad 1

## Descripción del proyecto

Este proyecto realiza un análisis completo de un dataset de ventas de la empresa ficticia *TechVentas*, con ll objetivo es simular un flujo real de trabajo en análisis de datos, combinando limpieza de datos, transformación, análisis exploratorio y consultas SQL.

El proyecto está dividido en 3 archivos principales, cada uno con un enfoque distinto del análisis.


## Estructura del proyecto

- `1_numpy_.py` → Análisis y operaciones con NumPy  
- `2_sql_discovery.ipynb` → Limpieza, transformación y análisis exploratorio con Pandas  
- `3_sql_discovery.sql` → Consultas SQL  

El proyecto incluye:

- Carga de datos desde CSV
- Limpieza y tratamiento de datos inconsistentes
- Operaciones con numpy
- Manejo de valores nulos y duplicados
- Creación de nuevas variables (ingresos y variables de tiempo)
- Análisis exploratorio de datos (EDA)
- Consultas SQL usando SQLite en memoria
- Análisis de negocio (ventas, clientes y vendedores)
- Cálculo de ingresos brutos y netos
- Resumen mensual de ventas
- Evaluación de cumplimiento de metas

---

##  Tecnologías utilizadas

- Python 3.x
- pandas
- numpy
- sqlite3
- csv
- chardet

---

##  Dataset

El proyecto utiliza el archivo:ventas_techventas.csv

##  Instalación del entorno

### 1. Crear entorno en conda

``en conda promp
conda create -n ProyectoMasterIA python=3.10

### 2. Activar entorno
conda activate ProyectoMasterIA
### 3. Instalar dependencias
conda install pandas numpy chardet

### 4. Ejecución del proyecto

Colocar el archivo ventas_techventas.csv en la misma carpeta del notebook o script, luego ejecutar el notebook o script en ordeny seguir las secciones del flujo de análisis en el que se van a mostrar: 

### Carga de datos
Lectura del CSV
Detección de codificación
Visualización inicial
### Limpieza de datos
Eliminación de caracteres incorrectos
Reemplazo de valores inválidos (-1 → 0)
Corrección de nombres mal codificados
Tratamiento de valores nulos

### Análisis exploratorio
Tipos de datos
Valores nulos
Estadísticas descriptivas
Duplicados

### Base de datos SQLite
Creación de base en memoria
Exportación del DataFrame a SQL
Consultas con:
SELECT
JOIN
GROUP BY
HAVING

### Análisis de negocio
Ingreso bruto y neto
Ventas por categoría
Top vendedores
Cliente con mayor ingreso
### Resumen mensual
Agrupación por mes con groupby
Cálculo de métricas:
total de ventas
ingreso bruto
ingreso neto
precio promedio

### Metas y cumplimiento
Creación de metas mensuales
Unión de datos reales con metas
Cálculo del porcentaje de cumplimiento
### Exportación final
Guardado de resultados en SQLite
Validación de tablas
Conteo de registros finales

