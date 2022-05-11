# Lección Análisis y visualización de datos con R para ecólogos
## Episodio 3: Empezando con datos

## ¿Cómo importar una base de datos?

#' Cuando trabajamos con datos, es muy probable que tengamos bases en distintos 
#' formatos. Uno de ellos, el más conocido, es el formato .csv ("comma separated 
#' values").

# Cargamos los paquetes necesarios
library(tidyverse)
library(here)

# Importamos el archivo:
base <- readr::read_csv(
  here("Carpentries", "SAFI_clean.csv"), 
  # la función `here` del paquete con el mismo nombre nos permite crear caminos
  # relativos (relative paths) a las carpetas y a los archivos que están dentro
  # del proyecto
  na = "NULL")
# este argumento indica el valor que toman los NA en la base

# Chequeamos el dataframe
view(base)
