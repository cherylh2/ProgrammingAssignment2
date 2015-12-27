## Put comments here that give an overall description of what your
## functions do 


## Write a short comment describing this function
## makeCacheMatrix - this one caches the inverse of the passed in matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL                    
  
  set <- function(y=matrix())  
  {
    x<<-y
    m<<-NULL
    
  }
  get <- function() x
  
  setCachedMatrix <- function(solve) m <<- solve
  getCachedMatrix <- function() m
  matrix(setCachedMatrix)
  
}


## Write a short comment describing this function
## cacheSolve - this one reads the cached value from makeCacheMatrix if available, if not it gets the inverse of the matrix
##
## 1st checks to see if $getCachedMatrix is not null
## if not null, then just read "m"
## if is null, then runs get() which instead solve(x) to get value and puts it in setCachedMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m = x$getCachedMatrix
  if (!is.null(m))
  {
    message("getting cached data")
    return (m)
    
  }
  data <- x$get()
  m <- solve(x)
  x$setCachedMatrix(m)
  m
  
}
