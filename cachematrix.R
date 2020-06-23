## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##the arguement we supply here is a matrix,assumigng it is invertible. outside set function, we get the value of matrix
##getInverse gives the inverse. this whole function is meant to calculate inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  set <- function(y){
    x<<- y
    inv <<- NULL
}
        get <- function(){x}
  setInverse<- function(inverse){inv<<- inverse}
  getInverse <- function(){inv}
  list(set= set, get=get, setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
#inv is a variable to which the inverse of matrix is assigned
##if inverse  has already ben calculated it can get the inverse from cache with the message "getting cache data" and skip the computation
##solve is the std R function to calculate inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
  if(is.null(inv)){
    message("getting cache data")
    return(inv)
}
         mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
