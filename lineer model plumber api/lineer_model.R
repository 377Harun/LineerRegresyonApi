
library(tidyverse)


setwd("C:/Users/Harun/Desktop/lineer model plumber api")
head(lungcap)

lineer_model = lm(Yas~.,data = lungcap)

NewPredictions <- function(model, newdata){
  new.predictions <- predict(object = model, newdata = newdata)
  return(new.predictions)
}

modellist <- vector(mode = 'list')

modellist$modelobject <- lineer_model

modellist$NewPredictions <- NewPredictions

saveRDS(object = modellist , file = 'lineermodel.RDS')





