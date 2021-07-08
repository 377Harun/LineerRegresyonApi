

library(plumber)

setwd("C:/Users/Harun/Desktop/lineer model plumber api")


## Load the model
modellist = readRDS("lineermodel.RDS")

## Lets make the predictions

#* @param Ak_Kap
#* @param Boy
#* @param Sigara
#* @param Cinsiyet
#* @param Kanser
#* @get /predict
predictions <- function(Ak_Kap,Boy, Sigara, Cinsiyet, Kanser){
  Ak_Kap <- as.numeric(Ak_Kap )
  Boy <- as.numeric(Boy)
  Sigara <-  as.factor(Sigara)
  Cinsiyet  <- as.factor(Cinsiyet)
  Kanser <-  as.factor(Kanser)
  
  X.new <- data.frame(Ak_Kap= Ak_Kap,
                      Boy = Boy ,
                      Sigara=Sigara,
                      Cinsiyet = Cinsiyet,
                      Kanser=Kanser)
  
  #predict based on input
  
  
  ##predict(iris_rf, new_data= X.new, type ="class")
  y.pred <- modellist$NewPredictions(model = modellist$modelobject, newdata = X.new)
  
  return(y.pred)
  
}



