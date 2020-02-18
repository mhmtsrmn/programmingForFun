library(png)
library(ggplot2)

source('circle.R')
source('heart.R')
source('ellipsey.R')

# Heart-eye emoji
head <- circle()
left_eye <- heart(pos = c(1.15, 2.65))
right_eye <- heart(pos = c(2.85, 2.65))
mouth <- circle(t = seq(pi+pi/20, 2*pi-pi/20, by=0.01), a = 1, d = 2, pos = c(0, -0.2))
#mouth2 <- circle(t = seq(pi+pi/10, 2*pi-pi/10, by=0.01), a = 0.5, d = 2, pos = c(0, -0.5))

p1 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#FF1122') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#FF1122') +
  geom_polygon(data = mouth, aes(x, y), fill = '#000000') +
  #geom_polygon(data = mouth2, aes(x, y), fill = '#994C00') +
  coord_fixed() +
  theme_void()

p1

png('hearteye.png', bg = 'transparent')
p1
dev.off()

# Smiley
head <- circle()
right_eye <- circle(a=0.25, pos = c(-0.8, 0.55))
left_eye <- circle(a = 0.25, pos = c(0.8, 0.55))
mouth <- circle(t = seq(pi+pi/6, 2*pi-pi/6, by=0.01), a = 1, d = 2)

p2 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#000000') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#000000') +
  geom_path(data = mouth, aes(x, y), size = 2) +
  coord_fixed() +
  theme_void()

png('smiley.png')
p2
dev.off()

# Smiley2
head <- circle()
left_eye <- ellipsey(a = c(0.2, 0.35), pos = c(-0.8, 0.55))
right_eye <- ellipsey(a = c(0.2, 0.35), pos = c(0.8, 0.55))
mouth <- circle(t = seq(pi+pi/6, 2*pi-pi/6, by=0.01), a = 1, d = 2)

p3 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#000000') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#000000') +
  geom_path(data = mouth, aes(x, y), size = 2) +
  coord_fixed() +
  theme_void()

png('smiley2.png')
p3
dev.off()

# Winky
head <- circle()
right_eye <- ellipsey(a = c(0.35, 0.02), pos = c(-0.8, 0.55))
left_eye <- circle(a = 0.25, pos = c(0.8, 0.55))
mouth <- circle(t = seq(pi+pi/6, 2*pi-pi/6, by=0.01), a = 1, d = 2)

p4 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#000000') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#000000') +
  geom_path(data = mouth, aes(x, y), size = 2) +
  coord_fixed() +
  theme_void()

png('winky.png')
p4
dev.off()

# Sad
head <- circle()
right_eye <- circle(a=0.25, pos = c(-0.8, 0.55))
left_eye <- circle(a = 0.25, pos = c(0.8, 0.55))
mouth <- circle(t = seq(pi/6, pi-pi/6, by=0.01), a = 1, d = 1.5, pos = c(0.5, -1))

p5 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#000000') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#000000') +
  geom_path(data = mouth, aes(x, y), size = 2) +
  coord_fixed() +
  theme_void()

png('sad.png')
p5
dev.off()

# Awed?
head <- circle()
right_eye <- circle(a=0.35, pos = c(-0.8, 0.75))
left_eye <- circle(a = 0.35, pos = c(0.8, 0.75))
mouth <- ellipsey(a = c(0.4, 0.7), pos = c(0, -0.7))

p6 <- ggplot() + 
  geom_path(data = head, aes(x,y), col = '#FFFFFF') + 
  geom_polygon(data = head, aes(x,y), fill = '#FFAA33') +
  geom_path(data = left_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = left_eye, aes(x, y), fill = '#000000') +
  geom_path(data = right_eye, aes(x, y), col = '#FFAA33') +
  geom_polygon(data = right_eye, aes(x, y), fill = '#000000') +
  geom_path(data = mouth, aes(x, y)) +
  geom_polygon(data = mouth, aes(x,y), fill = '#000000') +
  coord_fixed() +
  theme_void()

png('awed.png')
p6
dev.off()


