makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){

## gives a list having functions
## set the matix
## get the matrix
## set the value of matrix
## get the value of matrix
## <<- is used to assign a value to an object in an enviroment that is 
## different from current environment

x<<-y
inv<<-NULL
}

get<-function()x
setinv<-function(inverse) inv<<-inverse
getinv<-function() inv
list(inv = inv, set = set, setinv = setinv, getinv = getinv)

}

## gives you the inverse of original matrix
## if already solved displays "getting cached data" then gives anwser 
## if not it solves for inverse of matrix

cacheSolve <- function(x, ...) {
inv <- x$getinv()
if(!is.null(inv)){
message("getting cached data")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv

}
