x <- data.frame(c1 = 1:2, c2=10:11)

mult <- function(x, c) {
  return (x*c)
}

apply(x, 2, mult, 5)

circulo <- function(r, pi) {
  return (pi*r^2)
}
sapply(x[,1], circulo, pi)
sapply(x[1,], circulo, pi)


rowMeans(x, TRUE)
