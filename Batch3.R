#1. Write an R program to calculate the sum of squares and 
#sum of cubes of the first ‘n’ natural numbers. 

n=as.integer(readline("Enter value of n: "))
cubes<-0
squares<-0

for(i in 1:n){
  cubes<-cubes+(i*i*i)
  squares<-squares+(i*i)
}

cat("Sum of cubes of",n,"natural numbers is:",cubes)
cat("\nSum of squares of",n,"natural numbers is:",squares)

#Decision Tree
library(rpart)

data<-data.frame(
  Outlook=rep(c("sunny","overcast","rainy"),each=10),
  Temp=rep(c("high","medium","low"),each=10),
  Humidity=rep(c("humid","normal"), each=15),
  Wind=rep(c("high","low"),each=15)
)

data$PlayGolf<-sample(c("YES","NO"),30,replace=TRUE)
data
write.csv(data,"golf.csv",row.names=FALSE)
data<-read.csv("golf.csv")

model<-rpart(
  PlayGolf~Outlook+Temp+Humidity+Wind,
  data=data,
  method="class"
)

test_data<-data.frame(
  Outlook="overcast",
  Temp="low",
  Humidity="humid",
  Wind="high"
)

Prediction=predict(model,test_data,type="class")
print(Prediction)

#Write an R program to predict the species of iris flowers 
#using a Decision Tree model in R. 

library(rpart)
mydata<-iris
View(mydata)

index<-sample(2,nrow(mydata),replace=TRUE,prob=c(0.7,0.3))
Training=mydata[index==1,]
Testing=mydata[index==2,]

model<-rpart(
  Species~Petal.Width+Petal.Length+Sepal.Width+Sepal.Length,
  data=Training,
  method="class"
)

test_data<-data.frame(
  Petal.Width=0.2,
  Petal.Length=1.4,
  Sepal.Width=3.5,
  Sepal.Length=5.1
)

Prediction<-predict(model,test_data,type="class")
print(Prediction)