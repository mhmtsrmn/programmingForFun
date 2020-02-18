heart <- function(t = NULL, pos = c(1,3)){
  #setting default for t
  if(is.null(t)) t <- seq(0, 2*pi, by = 0.01)
  
  x = (16*sin(t)^3) / 50 + pos[1]
  y = (13*cos(t)-5*cos(2*t)-2*cos(3*t) - cos(4*t))/50 + pos[2]
  data.frame(t, x, y)
}