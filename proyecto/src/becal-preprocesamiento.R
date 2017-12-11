# Cargar libraries
library(stringi)
library(dplyr)
library(stringr)
source('lib/utils.R')

# Leer datasets
becal17 = read.csv('./data/becal2017.csv', header = T, stringsAsFactors = F, encoding = 'UTF-8')
becalCobertura = read.csv('./data/becal-cobertura.csv', header = T, stringsAsFactors = F, encoding = 'UTF-8')


##########  PARTE 1 - DATASET: becal2017.csv  ###################

## 
# A
# Colocar aqui el codigo que realice la siguiente tarea:
# Renombrar las columnas al siguiente formato: nombres en minuscula sin espacios vacios y 
# conteniendo solo caracteres a-z sin articulos (no acentos, no ??s, no parentesis, no /, etc.)
# Sugerencia: Utilizar funciones utilitarias de utils.R
##
columnNames <- colnames(becal17)
for (name in columnNames) {
  names(becal17)[names(becal17) == name] <- limpiar_nombres(name)
}

##
# B
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Renombrar las columnas llamdas 'n' de la siguiente manera: columna 1 = 'nroreg', 
# columna 3 = 'nroconv', columna 20 = 'nrorankuni', columna 22 = 'nrorankcur'
##
names(becal17)[c(3, 20, 22)] <- c('nroconv','nrorankuni','nrorankcur')

##
# C
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Eliminar los espacios al final de la cadena que indica la condici??n del becario y eliminar los registros 
# cuya condici??n sea 'No becario' o 'Pendiente'
##
becal17$condicion <- str_trim(becal17$condicion)
becal17 <- filter(becal17, !condicion %in% c('No becario', 'Pendiente'))

##
# D
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Convertir la fecha de adjudicaci??n al formato dd/mm/yyyy
##

month.str2num <- function(x) {
  monthStrings <- c('enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio',
                    'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre')
  dateInfo <- strsplit(x, ' ')
  return (paste0(dateInfo[[1]][1], '/', str_pad(match(dateInfo[[1]][3], monthStrings), width = 2, pad = '0'), '/', dateInfo[[1]][5]))
}

becal17$fechadeadjudicacion <- lapply(becal17$fechadeadjudicacion, month.str2num)

##
# E
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Convertir la columna c??dula de identidad al tipo num??rico removiendo primeramente el 
# separador de miles (coma o punto)
##
becal17$ci <- str_trim(gsub(',|\\.', '', becal17$ci))
becal17$ci <- as.numeric(becal17$ci)

##
# F
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Eliminar registros sin datos en la c??dula de identidad
##
becal17 <- filter(becal17, !is.na(ci))

##
# G
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Convertir los registros cuyo contenido de la columna **maestriadoctorado** 
# sea de m??s de una l??nea (p.ej., 554) a contenido de una sola l??nea
# Sugerencia: Eliminar el caracter '\n'
##
becal17$maestriadoctorado <- gsub('\\n', ' ', becal17$maestriadoctorado)

##
# H
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Agregar la columna **categoriauni** para contener la categor??a de la 
# universidad de acuerdo a su ranking. Las categor??as a considerar son: top_10, 
# top_50, top_100, top_150, top_200, mas_200
##
uniCategory <- function(x) {
  xnum <- as.numeric(x)
  
  if (is.na(x)) {
    return ('sin dato')
  }
  
  if (xnum <= 10) {
    return ('top_10')
  }
  
  if (xnum <= 50) {
    return ('top_50')
  }
  
  if(xnum <= 100) {
    return('top_100')
  }
  
  if(xnum <= 200) {
    return('top_200')
  }
  
  return ('mas_200')
}

select(mutate(becal17, categoriauni=uniCategory(str_trim(nrorankuni))), nrorankuni, categoriauni)
select(becal17, nrorankuni, categoriauni)

##
# I
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Agregar la columna **tipoestudio** que puede tomar uno de tres valores, maestria_profesional, 
# maestria_academica, o doctorado, dependiendo del tipo de beca
##





##########  PARTE 2 - DATASET: becal-cobertura.csv  ###################

##
# A
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Renombrar las columnas Total General y C.I. siguiendo las reglas mencionadas anteriormente
##





##
# B
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Convertir la columna **ci** al tipo num??rico removiendo primeramente el separador 
# de miles (coma o punto)
##





##
# C
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Eliminar registros sin datos en la c??dula de identidad
##





##
# D
# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Convertir la columna **Total General** al tipo entero despu??s de convertir los montos en euros a dolares 
# (utilizar el cambio 1USD->0.86E), eliminar los signos de dolar y euro tambi??n los puntos y espacios vacios, 
# redondear los montos decimales incrementando el parte entera si el primer digito despu??s de la coma es mayor a 5
##





##########  PARTE 3 ###################

# Colocar aqu?? el c??digo que realice la siguiente tarea:
# Agregar al dataset _becal2017.csv_ la columna **totalgralusd** del dataset _becal-cobertura.csv_ utilizando la 
# columna **ci** (disponible en ambos datasets) como referencia





##########  PARTE 4 ###################

# Escribir nuevo dataset
write.csv(becal_completo, './data/becal_completo.csv', row.names = F)
