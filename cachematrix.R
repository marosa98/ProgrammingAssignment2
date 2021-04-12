## These are the functions that cache and compute the given matrix into 
## inverse matrix. this is a pair of functions that cache the 
## inverse of a matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
        set <-function(y) {
                mtx <<- y;
                inverse <<- NULL
}
        Get <-- function() return(mtx);
        setinv <-- function (inv) inverse <<- inv;
        getinv <-- function () return(inverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## this function computes the inverse of the 'x' returned by the makeCacheMatrix
## above. If the inverse has already been calculated, then the "cachesolve" should
## retrieve the inverse from the cache.
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        
}
