## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #define aux matrix to NULL
  matriz <- NULL
  #Set Value parsed to environment by a function
  set <- function(y){
    x <<- y
    matriz <<- NULL
  }
  #Get value of the parsed matrix in the environment
  get <- function() x
  #Set Matrix inverse to environment
  setInverse <- function(solve) matriz <<- solve
  #Get value of matrix in environment
  getInverse <- function() matriz
  #Show list of function defined
  list(get = get, set = set, setmean = setmean, getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    #if x is no null, get the inverse in the cache and return it
    if(!is.null(x$getInverse)){
      return(x)
    }
   #Get the value of the matrix
   data <- x$get()
   #Calculate the inverse
   matriz <- solve(data)
   #Set value to cache
   x$setInverse(matriz)
   #show the inverse matrix
   inverse
}
