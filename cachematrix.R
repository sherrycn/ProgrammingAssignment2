## The following functions are used to create a special object that stores a matrix and cashes its inverse.


## The makeCacheMatrix creates a special "Matrix",which is a list containing a function to:
## 1.set the value of the matrix
## 2.get the value of the matrix 
## 3.set the value of the inverse
## 4.get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<-NULL
  }
  ## solution 1
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if (!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
  }
  ##example
  ## B<- matrix(c(1,2,3,4),2,2)
  ## B1 <- makeCasheMatrix(B)
  ## casheSolve(B1) inverse returned after compution 
  ## cacheSolve(B1) getting cached data
  ##
  
  ## solution 2
  get <- function() x
  setinverse <- function(inverse) i <<- solve(x)#calculate the inverse
  getinverse <- function() i
  list(set= set,
       get= get,
       setinverse=setinverse,
       getinverse=getinverse)
  
}
## @example:
##functions <- makeCacheMatrix()
##functions$set(matrix(1:4, 2))
##functions$get()
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4
##functions$setInverse()
##functions$getInverse()
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5


###I've researched online and found the solution two is the most straightforward approach.
#It also can be solved by using the cacheSolve function which computes the inverse of the "matrix




