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
  get <- function() x
  setinverse <- function(inverse) i <<- solve(x)#calculate the inverse
  getinverse <- function() i
  list(set= set,
       get= get,
       setinverse=setinverse,
       getinverse=getinverse)
  
}
###I've researched online and found the above solution is the most straightforward approach.
#It also can be solved by using the cacheSolve function which computes the inverse of the "matrix




