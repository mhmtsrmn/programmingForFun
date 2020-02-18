circle <- function(t=NULL, a = 2, b = 1, c = 0, d = 2, pos = NULL){
  # a*trigfun(b*t + c) + d
  
  #setting default for t
  if(is.null(t)) t <- seq(0, 2*pi, by = 0.01)
  
  if(is.null(pos)) pos = c(0, 0)
  
  x = a*cos(b*t+c)+ d + pos[1]
  y = a*sin(b*t+c)+ d + pos[2]
  data.frame(t, x , y)
}