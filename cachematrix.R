## Put comments here that give an overall description of what your
## functions do
	## First, function-makeCacheMatrix will get and set the object which we tried to compute. 
	## Second, functioncacheSolve will catch the data from makeCacheMatrix, and process data 
	## to get the inverse matrix from data and return it!
	
## Write a short comment describing this function
	## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
	## set the value of the matrix
	## get the value of the matrix
	## setInverse the value of the inverse of the matrix
	## getInverse the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setInverse <- function(solve) i <<-solve
	getInverse <- function() i
	list(set = set,
		 get = get,
		 setInverse = setInverse,
		 getInverse = getInverse)
}


## Write a short comment describing this function
	## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.  
    ## If the inverse has already been calculated (and the matrix has not changed),
	## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
	i <- x$getInverse()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setInverse(i)
	i        
}
