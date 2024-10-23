# Modelación y Control Óptimo en una Pesquería de Acceso Abierto

Este repositorio contiene el código y la documentación relacionados con el proyecto desarrollado para el curso **MA4703 Control Óptimo: Teoría y Laboratorio** en la Facultad de Ciencias Físicas y Matemáticas de la Universidad de Chile. El proyecto aborda la modelación bioeconómica de una pesquería de acceso abierto con dos especies y captura no selectiva, utilizando herramientas de control óptimo.

## Descripción del Proyecto

El objetivo del proyecto es analizar un modelo dinámico de una pesquería en la que una flota captura dos especies, una presa y una depredadora, sin discriminar entre ellas. El sistema está basado en ecuaciones diferenciales no lineales que describen la dinámica de la interacción entre las especies, bajo la hipótesis de que la pesca sigue una política de captura por unidad de esfuerzo.

### Componentes del Proyecto:

1. **Modelación Matemática**: 
   - Formulación de un sistema de ecuaciones diferenciales que describe la interacción depredador-presa con captura no selectiva.
   - Análisis cualitativo del sistema (puntos de equilibrio, estabilidad, etc.).

2. **Control Óptimo**: 
   - Aplicación del Principio del Máximo de Pontryagin (PMP) para determinar la política óptima de captura.
   - Estudio de las ecuaciones de Hamilton-Jacobi-Bellman (HJB) y su resolución numérica.

3. **Simulaciones**: 
   - Implementación de simulaciones numéricas para analizar el comportamiento del sistema bajo distintas condiciones de parámetros.

## Estructura del Repositorio

- **/src**: Contiene el código principal en Julia para la simulación del sistema y la implementación del control óptimo.
- **/docs**: Documentación y explicaciones teóricas del proyecto.
- **/data**: Archivos de entrada y resultados de simulaciones numéricas.
- **README.md**: Este archivo de descripción.

## Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/sebastianacunau/Proyecto-Pesca.git
   ```

2. Instalar las dependencias en Julia:
   ```julia
   using Pkg
   Pkg.instantiate()
   ```

## Uso

Ejecutar el archivo principal para realizar simulaciones y visualizar los resultados:

```julia
julia src/main.jl
```

Ajusta los parámetros del modelo y del control en los archivos de configuración para personalizar las simulaciones.

## Referencias

Este proyecto se basa en conceptos de control óptimo aplicados a la modelación bioeconómica. Para más información sobre los modelos y métodos utilizados, consulte las siguientes referencias:

1. C. W. Clark, *Mathematical Bioeconomics: The Optimal Management of Renewable Resources*.
2. K. S. Chaudhuri, *A Bioeconomic Model of Harvesting a Multispecies Fishery*.

## Contribuciones

Este repositorio está abierto a contribuciones. Si deseas colaborar, por favor abre un "issue" o envía un "pull request".

## Licencia

Este proyecto está bajo la Licencia MIT.
