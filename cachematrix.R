## The functions below are used to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) ## creates a special "matrix" object
                                          ## that can cache its inverse 
{
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  
   get<-function() x
   setmatrix <-function(solve) 
    m<<- solve
   getmatrix <-function() m
   list(set=set, get=get, 
        setmatrix=setmatrix,             ## sets the value of the matrix
        getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) ## This function computes the inverse of the special
                                        ## matrix returned by makecachematrix above          

{
   m<-x$getmatrix()
   if(!is.null(m))
   {
      message("getting cached data")
      return(m)
   }
   
    matrix<-x$get
    m<-solve(matrix, ...)               ## solve returns the inverseof the matrix            
    x$setmatrix(m)
    m
}
