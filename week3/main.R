setwd("/Users/Julius/JHU_Rlang_HW/ProgrammingAssignment2")

source("cachematrix.R")

## Prepare Matrix ##
a <- matrix(c(1,2,3,4),nrow = 2,ncol = 2)
inverseOfA = solve(a)

b <- makeCacheMatrix(a)
b$get()
b$getInverse()
c <- cacheSolve(b)
b$getInverse()
