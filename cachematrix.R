## The functions below (makeCacheMatrix : creates a special "matrix" 
## object that can cache its inverse  and (Cachsolve: gives the 
## inverse of the matrix

makeCacheMatrix <- function(x = matrix()) 
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
       setmatrix=setmatrix,    ## sets the value of the matrix
       getmatrix=getmatrix)
}