## this is a pair of functions that cache the inverse of a matrix.
## this creates a matrix to caches its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

        ## this loads the inverse property
        inverse <- NULL
        
        ## set the matrix
        set <-function(y) {
                mtx <<- y;
                inverse <<- NULL
}
        ## this is to get the matrix
        Get <-- function() return(mtx);
        
        ## this is to set the inverse of the matrix
        setinv <-- function (inv) inverse <<- inv;
        
        ## to get the inverse of the matrix
        getinv <-- function () return(inverse);
        
        ## return matrix
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## this is to compute the inverse of the 'x' returned above.
## this is to retrieve the inverse from the code above.

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        ## this is to return the inverse if it has been set
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        ## this will get the matrix from the object
        data <- x$get()
        
        ## this will calculate the inverse
        i <- solve(data, ...)
        
        ## this will set the inverse to the object
        x$setinverse(i)
        
        ## this will return the matrix
        i
        
}
