## Based on Coursera Asmt 2 example Readme file


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Based on Coursera Asmt 2 example Readme file

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  # print(m)
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  # print(data)
  m <- solve(data, ...)
  # print(m)
  x$setinv(m)
  m
}
