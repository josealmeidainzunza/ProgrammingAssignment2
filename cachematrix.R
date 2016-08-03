## Create two functions that can cache the inverse of a matrix

## This function creates a list containing functions to:
##set a matrix
##get a matrix
##set the inverse of the matrix
##get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL 
    
    set <- function(y){
        x <<- y 
        m <<- NULL 
    }
    
    get <- function() x 
    setInverse <- function(inverse) m <<- inverse 
    getInverse <- function() m 
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) 
}


## This function shows the inverse of a matrix and if the inverse has already been calculated, the cache will show the matrix

cacheSolve <- function(x, ...) {
    
    
    m <- x$getInverse() 
    
    
    if (!is.null(m)) {
        message("Getting cache data")
        return(m)
    }
    
    data <- x$get() 
    m <- ginv(data, ...) 
    x$setInverse(m) 
    m
}
