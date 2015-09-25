## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Crea una matriz cuadrada la cual es asignada a un vector, de caul se obtendra con la funcíon cache de la inversa.
##Guarda los datos en el cache para no estar re calculando los datos.

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 	  set <- function(y) {
	   x <<- y
    m <<- NULL
 	}
	   setinverse <- function(inverse) m <<- inverse
	   getinverse <- function() m
	   list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Escribe una corta descripción de la función:
##Esta función sirve para calcula la inversa de la matriz que se encuentra en la primera función makeCacheMatrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
	    m <- x$getinverse()
if(!is.null(m)) {
    	message("getting cached data")
	    return(m)
}
	data <- x$get()
	    m <- solve(data, ...)
    	x$setinverse(m)
     	m
##YReturna la inversa de "x"
}
