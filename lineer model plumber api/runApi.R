

library(plumber)

setwd("C:/Users/Harun/Desktop/lineer model plumber api")
r <- plumb(file = 'plumber.R')
r$run(port = 8000)


