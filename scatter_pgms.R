#Create a scatterplot, scatterplot matrix, 
#scattersmooth of the dataset “mtcars”

#scatterplot
plot(mtcars$wt, mtcars$mpg, main="Scatterplot",
     xlab="Weight",
     ylab="Miles per Gallon",
     pch=19,
     col="lightblue")

#scatterplot matrix
pairs(mtcars, main="Scatterplot matrix",col="blue")

#scattersmooth
scatter.smooth(mtcars$wt, mtcars$mpg, main="Scatterplot",
     xlab="Weight",
     ylab="Miles per Gallon",
     pch=19,
     col="lightblue")

#scatterplot3d
library(dplyr)
library(scatterplot3d)

scatterplot3d(mtcars$mpg, mtcars$hp, mtcars$cyl,
              xlab="Miles per gallon", ylab="Horsepower",zlab="Cylinders",
              color="red", pch=16)
