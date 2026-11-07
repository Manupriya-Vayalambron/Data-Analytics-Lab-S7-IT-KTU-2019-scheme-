#1)Write an R program to create two vectors and perform the following operations: 
#a. Element-wise addition 
#b. Element-wise multiplication 
#c. Find the mean and standard deviation of the resulting vectors
# Read first vector
cat("Enter elements of first vector:\n")
A <- scan()

# Read second vector
cat("Enter elements of second vector:\n")
B <- scan()

# Element-wise addition
cat("Element-wise addition\n")
C <- A + B
print(C)

# Element-wise multiplication
cat("Element-wise multiplication\n")
D <- A * B
print(D)

# Mean and standard deviation
cat("Mean and SD of first resulting vector\n")
print(mean(C))
print(sd(C))

cat("Mean and SD of second resulting vector\n")
print(mean(D))
print(sd(D))

#---------------------------------------------------
#LINEAR REGRESSION

library(stats)
library(dplyr)
library(MLmetrics)


mydata<-select(iris,c(1,2,3,4))
View(mydata)
summary(mydata)

#Correlation Matrix
cm=cor(mydata)
cm

index=sample(2,nrow(mydata),replace=TRUE,prob=c(0.7,0.3))
index

Training=mydata[index==1,,]
Testing=mydata[index==2,,]

model=lm(Petal.Length~Sepal.Length+Sepal.Width,Training)
Predict=predict(model,Testing)
Predict

error=MAPE(Predict,Testing$Petal.Length)
1-error