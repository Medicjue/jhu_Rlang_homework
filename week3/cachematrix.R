## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special "matrix" object that can cache its inverse.
  inverseOfX = solve(x)
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverseOfX) m <<- inverseOfX
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
  ## Return a matrix that is the inverse of 'x'
  inverseOfX <- x$getInverse()
  if(!is.null(inverseOfX)) {
    return(inverseOfX)
  }
  data <- x$get()
  inverseOfX <- solve(data)
  x$setInverse(inverseOfX)
  return(inverseOfX)
}
