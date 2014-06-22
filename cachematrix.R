## Put comments here that give an overall description of what your
## functions do

## The first function will create a special matrix which actually is a list contain
## several functions.
## The second one will calculate the inverse matrix of the one created by the first
## one, but before that, it will check if there is already the answer cached.

## Write a short comment describing this function
## This function generate a special matrix
makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
            x<<-y
            m<<-NULL
        }
        get<-function()x
        setinverse<-function(inverse)m<<-inverse
        getinverse<-function()m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## This calculate the inverse matrix created with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        matrix<-x$get()
        m<-solve(matrix)
        x$setinverse(m)
        m
}
