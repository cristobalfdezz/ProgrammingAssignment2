## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This creates a matrix able to cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    #Set the matrix
    set <- function(matrix) {
        mat <<- matrix
        inv <<- NULL
    }
    #Get the matrix
    get <- function () {
        mat
    }
        #Set the inverse of the matrix
        setinverse <- function(inverse){
            inv <<- inverse
    }
        #Get the inverse of the matrix
        getinverse <- function() {
            inv
    }
        #List of the methods employed above
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
        
## Write a short comment describing this function

#This function calculates the inverse of the matrix created with the function shown above.
#However, it first checks if the inverse has already been calculated. If so, it gets the
#inverse from the cache. Otherwise, it calculates the inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat <- x$getinverse()
    #Returns the inverse if it is already set
    if(!is.null(mat)) {
        message("getting inversed matrix")
        return(mat)
    }
    #Get the matrix
    data <- x$get()
    #Calculation of the inverse 
    mat <- solve(data, ...)
    #Set the inverse
    x$setinverse(mat)
    #Return the matrix
    mat
}


