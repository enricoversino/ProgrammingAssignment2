## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
  inv <- NULL
  set <- function(y) {
    a <<- y
    inv <<- NULL
  }
  get <- function() a
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(z, ...) {
  inversa <- z$getinverse()
  if(!is.null(inversa)) {
    return(inversa)
  }
  dati <- z$get()
  inversa <- solve(dati)
  z$setinverse(inversa)
  inversa
}
