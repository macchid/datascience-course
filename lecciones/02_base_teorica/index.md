---
title: Base Conceptual
subtitle    : Curso de Data Science con Impacto Social
author      : Jorge Saldivar
job         : Universidad Católica "Nuestra Señora de la Asunción"
logo        : logo-uca.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
url:
  lib: ../libraries
  assets: ../assets
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---



## Tipo de datos y medidas

En data science los tipo de datos tradicionales son:

- **Continuo**: datos que pueden tomar cualquier valor en un intervalo determinado. Ej., Salario=10500.507$

- **Discreto**: datos que pueden tomar solo valores enteros, como ser contadores. Ej., Edad=25

- **Categorico**: datos que pueden tomar valores determinados en un conjunto finito de elementos o categorías. Ej., Sexo=Femenino, donde _Sexo_ puede tomar valores solo los valores Masculino o Femenino

- **Binario**: tipo especial de dato categórico que puede tomar solo dos valores, verdadero/falso, 0/1, si/no. Ej., Llueve=Si

- **Ordinal**: tipo especial de dato categórico donde los valores tienen poseen un orden específico. Ej., PuntajeExamen=4 donde _PuntajeExamen_ puede tomar los valores 1, 2, 3, 4, o 5.

---

## Estructura y representación de los datos

En data science los datos se estructuran comúnmente en **data frames**, los cuales se componen de filas y columnas 

<img class=center src="../assets/img/dataframe-a.png" height=450 />

---

## Tipos de pregunta - Descriptiva


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

---

## Tipos de pregunta - Exploratorias

...

---

## Tipos de pregunta - Inferenciales

...

---

## Tipos de pregunta - Predictivas

...

---

## Tipos de pregunta - Causales

...