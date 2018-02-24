## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The below function creates a Special matrix and gets and sets the value into the martix

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, 
       get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)

}


## Write a short comment describing this function

## The below function calculates the inverse of the Special matrix and returns the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  
  ## Checking of the inverse is cached or not 
  ## If cached the returning the cached inverse
  if(!is.null(i)){
    
    message("Getting Cached Data")
    return(i)
    
  }
  
  data <-x$get()  ## Getting matrix data
  i <- solve(data,...) ## Solving the inverse of matrix
  x$setinverse(i)
  i   ## return the inverse matrix
  
}
