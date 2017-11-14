v <- c(0.5,0.6)
l1 <- c(FALSE, TRUE, TRUE)
l2 <- c(T, F)
ch <- c('a')
it <- 9:29
co <- c(1+0i, 2+4i)
v2 <- vector('numeric', 10)
v2[1] <- 5


x <- 1:3
y <- 10:12

z <- cbind(x,y)
z

w <- rbind(x,y)
w

x <- factor(c('yes', 'yes', 'no', 'yes', 'no'))
x

table(x)


df <- data.frame(c1 = 1:4, c2 = c(T, T, F, F, T), c3 = c('a', 'b', 'c', 'd', 'e'))
df
