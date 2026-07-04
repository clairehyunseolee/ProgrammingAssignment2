## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The user inputs a matrix. First the function creates an empty variable called "inv" to hold the value of the inverse. Then it uses the set() function to set the matrix to the matrix entered by the user. Then it uses the get function to recall the matrix inputted by the user. Finally it summarizes these functions that will help calculate the inverse.


makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL

    set <- function(y) {
        x <<- y
        inv <<- NULL
    }

    get <- function() {
        x
    }

    setinverse <- function(inverse) {
         inv <<- inverse
    }

    getinverse <- function() {
        inv
    }

    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
        )
}


## Write a short comment describing this function
# This function informs the user if the inverse exists, if the inverse exists then it gives the value of the inverse.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()

    if (!is.null(inv)) {
        message("cache inverse being used")
        return(inv)
    }

    matrix <- x$get()
    inv <- solve(matrix, ...)
    x$setinverse(inv)
    inv
}
