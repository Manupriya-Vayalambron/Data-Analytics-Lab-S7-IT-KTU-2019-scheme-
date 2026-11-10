# A.    Consider the “Boston” housing data set from MASS library in R.
# (a)    Do an exploratory analysis on the variables, visualize relationships and provide some of the insights that you infer from your results.
# (b)    Identify the predictor variables that could regress the response variable “medv” for the housing data. Interpret your model.
# (c)    Measure the performance metrics of your model and predict the values on a test data set.


# BOSTON HOUSING DATASET

# Load package and dataset
library(MASS)
data(Boston)
mydata <- Boston
View(mydata)

# (a) EXPLORATORY DATA ANALYSIS

# Structure and summary
str(mydata)
summary(mydata)

# Check missing values
sum(is.na(mydata))

# Histogram
hist(mydata$medv,
     main="House Price Distribution",
     xlab="Median House Value",
     col="lightblue")

# Scatter plots
plot(mydata$rm, mydata$medv,
     main="RM vs MEDV",
     xlab="Average Number of Rooms",
     ylab="Median House Value",
     col="blue")

plot(mydata$lstat, mydata$medv,
     main="LSTAT vs MEDV",
     xlab="Lower Status Population",
     ylab="Median House Value",
     col="red")

# Correlation matrix
cor(mydata)

# (b) MULTIPLE LINEAR REGRESSION

# Split data into training and testing
set.seed(123)
index <- sample(1:nrow(mydata), 0.7*nrow(mydata))

Training <- mydata[index, ]
Testing <- mydata[-index, ]

# Build regression model
model <- lm(medv ~ ., data=Training)

# Display model summary
summary(model)

# (c) MODEL EVALUATION AND PREDICTION

# Predict values
Predict <- predict(model, newdata=Testing)

# Performance metrics
RMSE <- sqrt(mean((Testing$medv-Predict)^2))
MAE <- mean(abs(Testing$medv-Predict))
R2 <- 1 - sum((Testing$medv-Predict)^2)/
  sum((Testing$medv-mean(Testing$medv))^2)

print(RMSE)
print(MAE)
print(R2)

# Compare actual and predicted values
result <- data.frame(
  Actual=Testing$medv,
  Predicted=Predict
)

print(head(result))

# Plot actual vs predicted values
plot(Testing$medv, Predict,
     main="Actual vs Predicted Values",
     xlab="Actual MEDV",
     ylab="Predicted MEDV",
     col="blue",
     pch=19)

abline(0, 1, col="red")


