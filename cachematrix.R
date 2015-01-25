<<<<<<< HEAD
## 
## This function creates a matix cashe

makeCacheMatrix <- function(x = matrix()) {
                    
                    im <- NULL  # initialize
                    y <- NULL   # initialize
                    
                    setmatrix <- function(y) {
                            x <<- y
                            im <<- NULL
                      }
                    getmatrix  <- function() x   # get matrix
                    # old code used intesting.
                    #setim <- function(inv) im <<- inv
                    #getim <- function() im
                    
                    setim <- function(Imatrix) im <<- Imatrix
                    getim <- function() im
                    
                    list(setmatrix = setmatrix, getmatrix = getmatrix,
                         setim = setim,
                         getim = getim)
                    }

## 
## this function creates the inverted matrix if it does not find it.
cacheSolve <- function(x, ...) {
  
                              message("starting data changes")
                              m <- x$getmatrix()
                              if(!is.null(m)) {  
                                message("cache found getting data")
                                return(m) 
                              }
                              message("No cached data found. Calculating inverse matrix...")
                              data <- x$get() 
                              m <- solve(mo) 
                              x$set(m) 
                              message("Completed")
                              return(m) 
                      }
#### program begins here #####
## 
## This line runs the cachesolve and cachematrix funtions while creating a 3x3matrix 
cacheSolve(makeCacheMatrix(2*diag(3)))


=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
