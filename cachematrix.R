#######################################################################
##               This function creates a matix cache                 ##

makeCacheMatrix <- function(x = matrix()) {
                    
                    im <- NULL  # initialize
                    y <- NULL   # initialize
                    
                    setmatrix <- function(y) {   # set matrix here
                            x <<- y
                            im <<- NULL
                      }
                    getmatrix  <- function() x   # get matrix here
                    
                    ### old code used in testing.
                    ###setim <- function(inv) im <<- inv
                    ###getim <- function() im
                    
                    setim <- function(Imatrix) im <<- Imatrix
                    getim <- function() im
                    
                    list(setmatrix = setmatrix, getmatrix = getmatrix,
                         setim = setim,
                         getim = getim)
                    }

## ####################################################################
## this function creates the inverted matrix if it does not find it. ##
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
######################## program begins here ##########################################
## This line runs the cachesolve and cachematrix funtions while creating a 3x3matrix ##
## all in a single line                                                              ##

cacheSolve(makeCacheMatrix(2*diag(3)))


>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
