# Consider the data set on 97 men who have prostate cancer 
# ● lpsa: log PSA score 
# ● lcavol: log cancer volume 
# ● lweight: log prostate weight 
# ● age: age of patient 
# ● lbph: log of the amount of benign prostatic hyperplasia 
# ● svi: seminal vesicle invasion 
# ● lcp: log of capsular penetration 
# ● gleason: Gleason score 
# ● pgg45: percent of Gleason scores 4 or 5 
# (a) Do an exploratory analysis on the variables, visualize relationships and provide some 
# of the insights that you infer from your results. 
# (b) Identify the predictor variables that could regress the response variable lpsa for the 
# prostate data. Justify and interpret your model.  
# (c) Measure the performance metrics of your model after running it on a test data set. 
# (d) Assume a new observation of a man for the predictor variables in your model and 
# predict the log PSA score for the man. 

# Prostate Cancer Data Analysis using Multiple Linear Regression

# Install and load package
# install.packages("ElemStatLearn")
library(ElemStatLearn)

# Load dataset
data(prostate)

# View dataset
View(prostate)
str(prostate)
summary(prostate)

# Remove train column for analysis
mydata <- prostate[, -which(names(prostate) == "train")]

# Check missing values
sum(is.na(mydata))

# (a) EXPLORATORY DATA ANALYSIS

# Histograms of variables
par(mfrow=c(3,3))

for(i in 1:ncol(mydata))
{
  hist(mydata[,i],
       main=names(mydata)[i],
       col="lightblue",
       xlab=names(mydata)[i])
}

par(mfrow=c(1,1))

# Scatter plot matrix
pairs(mydata,
      main="Relationships between Prostate Variables",
      col="blue")

# Correlation matrix
cor(mydata)

# Correlation of predictors with lpsa
cor(mydata)[,"lpsa"]

# (b) MULTIPLE LINEAR REGRESSION

# Split into training and testing data using train column
Training <- prostate[prostate$train == "T", ]
Testing <- prostate[prostate$train == "F", ]

# Build regression model
model <- lm(lpsa ~ lcavol + lweight + age + lbph +
              svi + lcp + gleason + pgg45,
            data=Training)

# Display model summary
summary(model)

# (c) PERFORMANCE EVALUATION

# Predict lpsa for test data
Predict <- predict(model, newdata=Testing)

# Actual and predicted values
result <- data.frame(Actual=Testing$lpsa,
                     Predicted=Predict)
print(result)

# RMSE
RMSE <- sqrt(mean((Testing$lpsa-Predict)^2))
print(RMSE)

# MAE
MAE <- mean(abs(Testing$lpsa-Predict))
print(MAE)

# R-squared
R2 <- 1 - sum((Testing$lpsa-Predict)^2) /
  sum((Testing$lpsa-mean(Testing$lpsa))^2)
print(R2)

# Actual vs Predicted plot
plot(Testing$lpsa, Predict,
     main="Actual vs Predicted lpsa",
     xlab="Actual lpsa",
     ylab="Predicted lpsa",
     col="blue",
     pch=19)

abline(0,1,col="red")

# (d) PREDICTION FOR A NEW OBSERVATION

# Create a new patient observation
new_patient <- data.frame(
  lcavol=1.5,
  lweight=3.5,
  age=65,
  lbph=0.5,
  svi=0,
  lcp=1.2,
  gleason=7,
  pgg45=20
)

# Predict log PSA score
new_predict <- predict(model, newdata=new_patient)
print(new_predict)
