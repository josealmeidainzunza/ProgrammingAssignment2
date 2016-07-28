## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates 4 methodos: setinv, getinv, get and set.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- yma
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function
## This function shows the inverse of matrix, if the inverse already calculated, it shows the cache.

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
		  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
