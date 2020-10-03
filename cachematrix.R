## A pair of functions that cache the inverse of a matrix

## Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

        ## Initialize the inverse property
          i <- NULL
        
        ## Method to set the matrix
          set <- function(matrix) {
              x <<- matrix
              i <<- NULL
          }
        
        ## Method the get the matrix
          get <- function(){
        ## Return the matrix
              x
          }

        ## Method to set the inverse of the matrix
          setInverse <- function(inverse) {
            i <<- inverse
          }

        ## Method to get the inverse of the matrix
          getInverse <- function() {
        ## Return the inverse property
          i
          }
        
        ## Return a list of the methods
          list(set = set, get = get, setInverse = setInverse, 
               getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
      n <- x$getInverse()
      if (!is.null(n)) {
          message("gettind cached data")
          return(n)
      }
     
        ## Get the matrix from our object
      data <- x$get ()
        
        ## Get the matrix from our object
      n <- solve(data) %*%
        
        ## Set the inverse to the object
      x$setInverse (n)
        
        ## Return the matrix
      n
}
