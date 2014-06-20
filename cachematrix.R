## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrix <- NULL
  set <- function(y){
    x <<- y
    matrix <<- NULL
  }
  get <- function() x
  setsolve <- function(m) matrix <<- m
  getsolve <- function() matrix
  list(set=set, get=get, 
       setsolve=getsolve, 
       getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  matrix <- x$getsolve()
  if(!is.null(matrix)){
    message("getting cached data")
    return(matrix)
  }
  data <- x$get()
  matrix <- solve(data,...)
  x$setsolve(matrix)
  matrix   ## Return a matrix that is the inverse of 'x'
}
