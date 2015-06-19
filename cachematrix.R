
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# we recieve and insert here in cache the matrix  x= matrix
# the inverse we make in the other function
makeCacheMatrix <- function(x = matrix()) {
            
            inverseM <- NULL
            
            set <- function(y) {
                        x <<-  y
                        m <<-  NULL
            }
            get <- function() x
            
            
            setInverseM <- function(myInverseM) inverseM <<- myInverseM
            getInverseM <- function() inverseM
            
            list(set = set, get = get, setInverseM = setInverseM, getInverseM = getInverseM)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            inverseM <- x$getInverseM()
            
            if(!is.null(inverseM)) {
                        
                        message("getting inverseM from cached")
                        return(inverseM)
            }
            data <- x$get()
            #here we make the inverse from a matrix
            inverseM <- solve(data)
            x$setInverseM(inverseM)
            return (inverseM)
            #inverseM
}

# x <- matrix(1:4,2,2)
# c <- makeCacheMatrix(x)
# cacheSolve(c)