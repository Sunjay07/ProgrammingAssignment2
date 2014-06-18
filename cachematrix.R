## Put comments here that give an overall description of what your
## functions do

## Computing the inverse of a square matrix 
## can be done with the solve function in R. 
## For example, if X is a square invertible matrix, 
## then solve(X) returns its inverse.

## Write a short comment describing this function

## This function creates a special "matrix" 
## object that can cache its inverse.
## set the value of the Matrix

makeCacheMatrix <- function(x = matrix()) {

     m<- NULL
set <- function(y)  {
     x<<- y
                m<<- NULL
                                          
}

## get the value of the Matrix
get<- function() x


## set the inverse of the Matrix
setMatrixInverse<- function(solve)
                   
                  m<<- solve
getMatrixInverse<- function() m


##get the inverse of the Matrix
list(set = set, get = get,
     SetMatrixInverse = SetMatrixInverse
     GetMatrixInverse = GetMatrixInverse)
}

## Write a short comment describing this function

## cacheSolve: This function computes 
## the inverse of the special "matrix" 
## returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and 
## the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
       ## Returns a Matric that is the inverse of 'X'
## get the inverse of the Matrix
m<- x$getmatrixInverse

## Check if there is a Matrix
if(!is.null(m)){
message("retrieving cached data")
return(m)
}
## if not true: get the inverse of the Matrix
data<-x$get()
m<- solve(data, ...)
## Set the inverse of the Matrix
x$setmatrixInverse(m)
m
}
