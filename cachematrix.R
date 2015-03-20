## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  ##clear up variable "i"
  set <- function(y){ 
    x <<- y
    i <<- NULL}
  ##set x and clear up variable "i" in the global environment
  get <- function() x
  ##get x
  setinverse <- function(solve) i <<- solve
  ##set a value of "i" in the global environment
  getinverse <- function() i
  ##get "i"
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  ##print makeCacheMatrix as a list including these four functions
}


##Write a short comment describing this function

cacheSolve <- function(x, ...) { 
  i <- x$getinverse()
  ##gen i from the function of get inverse
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ##if i is not empty,then print the message of "getting cached data" and return i
  data <- x$get()
  i <- solve(data, ...)
  ##else calculate the inverse of x
  x$setinverse(i)
  ##set a value of "i" in the global environment
  
  i
}
##Return a matrix that is the inverse of 'x'


