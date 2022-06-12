## Put comments here that give an overall description of what your
## functions do

## The purpose of these functions is to create a special matrix that can cache its inverse, compute the inverse of said matrix, and store them in cache; this prevents one from having to calculate the inverse on every occassion that it is required. 

## Write a short comment describing this function

## The makeCacheMatrix function creates a special matrix that caches its inverse. It sets the value of the matrix, gets the value of the matrix, sets the value of the inverse of the matrix, and gets the value of the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
              i <- NULL
              set <- function(y) {
                      x <<- y
                      i <<- NULL
              }
              get <- function() x
             setinverse<- function(inverse) i <<- inverse
             getinverse<- function() i
             list(set = set,
                  get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
}


## Write a short comment describing this function

## The cacheSolve function calculates the inverse of the special matrix returned by the makeCacheMatrix.If the inverse has already been calculated and the matrix hasn't been changed, then the cacheSolve function should retrieve the inverse from the cache.If the inverse does not exist, then it finds the inverse using the solve() function of R, setting and returning the inverse. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if (!is.null(i)) {
                  message ("getting cached data")
                  return (i)
        }
        data <- x$get()
        i <- solve (data, ...)
        x$setinverse(i)
        i
}

