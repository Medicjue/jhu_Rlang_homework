library(datasets)
data(iris)

?iris

undebug(ls)

tapply( iris$Sepal.Length,iris$Species, mean)

mean(iris$Sepal.Length)


apply(iris[, 1:4], 1, mean)

apply(iris[, 1:4], 2, mean)


data("mtcars")
?mtcars

mean(mtcars$mpg,mtcars$cyl)



sapply(split(mtcars$mpg, mtcars$cyl), mean)

mean(mtcars$mpg, mtcars$cyl)

lapply(mtcars, mean)



apply(mtcars, 2, mean)

with(mtcars, tapply(mpg, cyl, mean))

sapply(mtcars, cyl, mean)

split(mtcars, mtcars$cyl)







as.numeric(209.21429-82.63636)
debug(ls)
ls()
