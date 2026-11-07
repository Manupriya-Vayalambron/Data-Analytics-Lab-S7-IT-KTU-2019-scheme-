#kmeans
library(ggplot2)
library(ggfortify)
library(dplyr)

data<-iris
mydata<-select(data,c(1,2,3,4))
View(mydata)

set.seed(1234)

wss<-numeric()
for(i in 1:11){
  wss[i]<-sum(kmeans(mydata,i)$withinss)
}
plot(1:11,wss,type="b",
     xlab="number of clusters",
     ylab="Within Cluster Sum of Squares")
KM<-kmeans(mydata,2)
KM
KM$clusters
KM$centers
KM$withinss
KM$totss
KM$betweenss
autoplot(KM,data=mydata)