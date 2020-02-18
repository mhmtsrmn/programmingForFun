ellipsey <- function(t=NULL, a = c(1, 2), b = c(1, 1), d = c(0, 0), e = c(2,2), pos = NULL){
  # a*trigfun(b*t + c) + d
  
  #setting default for t
  if(is.null(t)) t <- seq(0, 2*pi, by = 0.01)
  
  if(is.null(pos)) pos = c(0, 0)
  
  x = a[1]*cos(b[1]*t+d[1])+ e[1] + pos[1]
  y = a[2]*sin(b[2]*t+d[2])+ e[2] + pos[2]
  data.frame(t, x , y)
}
