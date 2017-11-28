data = read.csv('/Users/macchid/Documents/GitHub/datascience-course/proyecto/data/becal-cobertura.csv', header = T, stringsAsFactors = F)


rpl <- function(x, y) {
    if (x == 'Espa\303\261a') {
      return (y)
    }
    else {
      return (x)
    }
}

write.csv(data, 'Documents/GitHub/datascience-course/lecciones/o4_r_intro/fundamentals/dataHandlingExampl.csv', row.names = F)
library('datasets')

autos = mtcars

sort(autos$mpg, decreasing = T)

high_mpg = autos[(autos$mpg > 30),]
high_mpg


#hist(autos$mpg, col = 'green', main = 'Distribucion de millas por gal??n', xlab = 'mpg', ylab ='cantidad')
#boxplot(autos$hp, col = 'red', main = 'Distribuci??n de HP', ylab = 'HP', labels(autos))



attach(high_mpg)
plot(wt, mpg, main="Relacion entre HP y MPG", 
    xlab= 'Peso del Auto (ton.)', ylab="Consumo (mpg.)", col="blue")
text(wt, mpg, row.names(mtcars[(autos$mpg > 30), ]), cex=0.4, pos=4, col="red")

attach(presidents)
plot(presidents, ylab = 'Porcentaje de Aprobacion (%)', xlab = 'A??o', main = 'Aprobacion (1er. cuatrimestre) Presidentes EE.UU.')

