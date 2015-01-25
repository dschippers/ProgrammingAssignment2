##This set of functions will cache a matrix and then look up the value of the cached matrix.
##If the matrix is not cached, an inverse will be computed and stored. 

## This function will cache the matrix

makeCacheMatrix<-function(x=matrix()){
  m <-NULL
  set <-function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function () m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## THis function will invert the matrix and look up the solution in the cache
}

cacheSolve<-function(x, ...){
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached matrix")
    return(m)
  }
  data<- x$get()
  m<- solve(data, ...)
  x$setinverse(m)
  m
  
}
