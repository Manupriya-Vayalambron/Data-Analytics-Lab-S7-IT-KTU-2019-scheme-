#svm
library(e1071)
head(iris,5)
attach(iris)

x<-subset(iris,select=-Species)
y<-Species

model<-svm(x,y)
summary(model)

pred<-predict(model,x)
system.time(pred)

table(pred,y)
plot(table(pred,y))