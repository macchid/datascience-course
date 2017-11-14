# Data Science con Impacto Social - macchid

Curso práctico sobre la ciencia de los datos y su aplicación al estudios de fenómenos sociales mediante el uso de _**datos abiertos**_ por el gobierno nacional. El curso ofrece una introducción a las principales conceptos, técnicas, y herramientas necesarios para extraer conocimiento de los datos. En el curso se aprenderá a colectar y pre-procesar datos, plantear preguntas de investigación, responder a estas preguntas, y visualizar los resultados.

## Objetivos

1. Aprender los conceptos básicos sobre ciencia y análisis de datos
2. Aprender y aplicar técnicas para la obtención y pre-procesamiento de datos en bruto
3. Aplicar herramientas estadísticas básicas para el análisis exploratorio de datos
4. Aprender y aplicar técnicas de inferencia estadística que permitan derivar conclusiones a partir de muestras de datos
5. Aprender y aplicar técnicas de aprendizaje supervisado que permitan explorar relaciones en los datos y derivar predicciones

## Requisitos

* Experiencia en programación orientada a objetos. Obs. __Para alumnos de Ing. Informática de la UC, haber aprobado la asignatura Lenguaje de Programación II__
* Conocimientos básicos de estadística (distribución normal, promedio, mediana, modo, varianza, desviación estándard, estadarización) Obs. __Para alumnos de Ing. Informática de la UC, haber aprobado la asignatura Estadística__

 ## Datos del Curso

* __Inicio__: 24-10-2017
* __Finalización__: 12-12-2017
* __Limite de Inscripción__: 20-10-2017
* __Modalidad__: Presencial (8 clases de 3 horas por semana)
* __Lugar__: Facultad de Ciencias y Tecnología, Universidad Católica “Nuestra Señora de la Asunción”, Campus Santa Librada, Asunción
* __Día y hora de Lección__: Martes de 9:00 a 12:00
* __Dedicación y créditos__: 2 créditos por asistencia y presentación de trabajos prácticos. Se podrán considerar créditos adicionales con la continuidad del proyecto posterior a la culminación de la materia, que derive en artículos científicos publicables en conferencias internacionales

## Inscripción

Completar el formulario de inscripción al curso [aquí](https://goo.gl/forms/tOsDDGlfnqG3Yb0r2)

## Tópicos

1. Introducción a la ciencia de los datos y base teórica
2. Herramientas para análistas y científicos de datos
3. Colección y pre-procesamiento de datos
4. Análisis Exploratorio de datos
5. Inferencia Estadística
6. Aprendizaje supervisado

## Datos Abiertos a Utilizar
### BECAL Paraguay
**BECAL** es un Programa Nacional de Becas de Postgrados en el Exterior; cuyo obejetivo principal es otorgar Becas destinadas a egresados de una carrera terciaria con el fin de llevar a cabo sus estudios de especialización (maestrías o doctorados en un país extranjero). El principal desafío de BECAL es mejorar la oferta del capital humano avanzado, mediante el financiamiento de becas de estudios de entrenamiento docente y postgrados en centros de excelencia del exterior. El mismo, tiene por objetivo contribuir a aumentar los niveles de generación y aplicación de conocimiento en las áreas de Ciencias y Tecnología (CyT) y en los niveles de aprendizaje en la educación. El principal problema a ser abordado por este programa es la baja capacidad del país para generar y aplicar conocimiento requerido para el desarrollo.


### Diccionario de Datos


#### Becal 2017
|Nombre|Descripción|Tipo de Dato|Posibles Valores|
|---|---|---|---|
|**Nº**|Secuencia autoincremental que indica la posición del registro|Integer| `[0-9]+`|
|**Condición**|String|Situación actual del Becario|Becario, Becario Retornado, No Becario, Pendiente|
|**Nº**|Campo repetido *ver campo Nº al inicio* | | |
|**Tipo de Convocatoria**|Convocatoria de la cual participó el Becario|String|1era. Convocatoria Autogestionada, 2da. Convocatoria Autogestionada, 3era. Convocatoria Autogestionada, 4ta. Convocatoria Autogestionada, Convocatoria Chevening, Convocatoria Docente - Francia, Convocatoria Docente 01 - España, Convocatoria Francia - SFERE, Convocatoria Fullbright, Convocatoria Laspau - Doctorado, Laspau|
|**Fecha de adjudicación**|Dia, mes y año en que se otorga la beca al Becario.|Date||
|**C.I.**|Cédula de Identidad del Becario|Integer||
|**Sexo**|Sexo del Becario|String|Femenino, Masculino|
|**Edad**|Edad del Becario|Integer||
|**Funcionario Público (Institución)**|Indica si el Becario es Funcionario Público. Si lo, es muestra la Institución a la que pertenece|String|NO, *Nombre de la Institución*|
|**Cargo**|En caso de ser Funcionario Público, el cargo que el Becario desempeña en la Institución *(ver campo Funcionario Público)*|String|no aplica, *Cargo del Becario*|
|**Goce de Sueldo**|Si el Becario es Funcionario Público, indica si gozará de sueldo durante el tiempo que duren sus estudios|String|SI, NO, no aplica|
|**Tipo de Beca (según Programa aprobado)**|Descripción del Programa Aprobado mediante el cual se otorga la Beca|String|*vacio*, Doctorado para Investigadores en CyT, Maestrí­a para Profesionales en otras Áreas relevantes, Maestría para Profesionales en Educación, Maestrí­a para Profesionales en CyT, Maestrí­a para Investigadores en CyT, Becas de Doctorado|
|**Área de la Ciencia**|Rama científica en que se enfoca el estudio de Postgrado otorgado al Becario|String|sin dato, no aplica, Ciencias Agrícolas, Ciencias Exactas y Naturales, Ciencias Médicas y de la Salud, Ciencias Sociales, Educación, Humanidades, Ingeniería y Teconlogía|
|**Disciplina**|Materia específica del Área de la Ciencia en la que se enfoca el curso de Postgrado|String||
|**Sector priorizado Conacyt**|Clasificación, entre los Sectores Priorizados por la CONACyT; de la Materia que estudia la carrera de Postgrado seleccionada|String||
|**Subsector priorizado**|Sub-clasificacion, dentro de la clasificacion anterior(*ver columna Sector Priorizado Conacyt*)|String||
|**Maestrí­a / Doctorado**|Título que otorga la Universidad por completar el curso de Postgrado que toma el becario|String||
|**Universidad de Destino**|Nombre de la Universidad que otorga el Título|String||
|**Ranking**|Publicación internacional que ordena las Instituciones Universitarias a nivel mundial, de acuerdo a una evaluación realizada por el organismo que la publica y que son de caracter público|String|*vacio*, QS, ARWU, TIMES, THE|
|**Nº**|Posición en el Ranking especificado en la columna anterior (*vease columna Ranking*) en que se encuentra la Universidad seleccionada por el Becario |Integer||
|**Ranking de Área Especí­fica**|Publicación internacional que ordena las Instituciones Universitarias a nivel mundial, de acuerdo a una evaluación realizada por el organismo que la publica, pero enfocadas en el Área de la Ciencia o Disciplina para la cual el Becario se postula.|String|*vacio*, Agriculture and Forestry, Computer Science, ARWU, QS, TIMES, 0, -|
|**Nº**|Posición en el Ranking especificado en la columna anterior (*vease columna Ranking de Área Específica*) en que se encuentra la Universidad seleccionada por el Becario |Integer| |
|**Ciudad de destino (en español)**|Ciudad en la que se encuentra asentada la Institución Universitaria a la que aplica el Becario|String| |
|**Paí­s de Destino**|Paías en la que se encuentra asentada la Institución Universitaria a la que aplica el Becario|String| |
|**Meses de duración de estudios**|Periodo en Meses en que se desarrolla el Programa de Estudios al que aplica el Becario|Integer| |
|**Inicio (cobertura de beca)**|Fecha de inicio del Programa de Estudios al que aplica el Becario|Date| |
|**Fin (cobertura de beca)**|Fecha de fin del Programa de Estudios al que aplica el Becario|Date|*Puede estar vacio*|
|**Ciudad de Origen**|Ciudad de la República del Paraguay en que nació el Becario|String| |
|**Departamento de Origen**|Departamento de la República del Paraguay, del cual es originario el becario|String|*vacio*, Capital, Concepción, San Pedro, Cordillera, Guairá, Caaguazú, Caazapá, Itapúa, Misiones, Paraguarí, Alto Paraná, Central, Ñeembucú, Amambay, Canindeyú, Presidente Hayes, Alto Paraguay, Boquerón|
|**Ciudad de Residencia**|Ciudad de la República del Paraguay en que actualmente fija domicilio el Becario|String| |
|**Departamento de Residencia**|Departamento de la República del Paraguay en que actualmente fija domicilio el Becario|String|*vacio*, Capital, Concepción, San Pedro, Cordillera, Guairá, Caaguazú, Caazapá, Itapúa, Misiones, Paraguarí, Alto Paraná, Central, Ñeembucú, Amambay, Canindeyú, Presidente Hayes, Alto Paraguay, Boquerón|
|**Nivel socioeconómico**|Escala numérica que representa la situación socio-económica del Becario|Float|`[0,1]`|
|**Tiempo de cobertura**|Periodo en Meses, que BECAL cubre el costo del Programa de Estudios al que aplica el Becario|Integer| | 
|**Contrato Nº**|Número del Contrato firmado entre el Becario y los Apoderados de BECAL para fijar los términos de cesión de la Beca|String| |
|**Fecha firma de Contrato**|Fecha en que se firma el Contrato entre el Becario y BECAL|Date||
|**Fecha firma de Adenda**|Fecha en que se firma, en caso de existir, una adenda al Contrato firmado entre el Becario y BECAL|Date| |


#### Cobertura BECAL
|Nombre|Descripcion|Tipo de Dato|Valores Posibles|
|---|---|---|---|
|**No.**|Secuencia autoincremental que indica la posición del registro|Integer|`[0-9]+`|
|**C.I.**|Número de cédula del becario| String ||
|**Nombre y Apellido**|Nombre(s) y Apellido(s) del becario| String||
|**Tipo de Beca (según Programa aprobado)**|Descripción del Programa Aprobado mediante el cual se otorga la Beca|String|*vacio*, Doctorado para Investigadores en CyT, Maestrí­a para Profesionales en otras Áreas relevantes, Maestría para Profesionales en Educación, Maestrí­a para Profesionales en CyT, Maestrí­a para Investigadores en CyT, Becas de Doctorado|
|**Maestria / Doctorado**|Título que otorga la Universidad por completar el curso de Postgrado que toma el becario|String||
|**Universidad de Destino**|Nombre de la Universidad que otorga el Título|String||
|**Pais**|País de origen de la Universidad que otorga el Título|String||
|**Dept. de Origen**|Departamento de la República del Paraguay, del cual es originario el becario|String|*vacio*, Capital, Concepción, San Pedro, Cordillera, Guairá, Caaguazú, Caazapá, Itapúa, Misiones, Paraguarí, Alto Paraná, Central, Ñeembucú, Amambay, Canindeyú, Presidente Hayes, Alto Paraguay, Boquerón|
|**Total General**|Monto en USD que representa el costo total de la Beca otorgada|Float||


