# Consider the dataset “Car Evaluation” with 1728 rows and 6 different attributes which are 
# buying price, price of maintenance, number of doors, capacity in terms of persons to carry, 
# the relative size of luggage boot and the estimated safety value of each car.  
# (a) Do an exploratory analysis on the variables, visualize relationships and provide some 
# of the insights that you infer from your results. 
# (b) Run a model to take a decision on buying a car. Interpret your results. 
# (c) Measure the performance metrics of your model after running it on a test data set. 
# (d) Prune the tree and compare it with the model obtained in (b). 


# Car Evaluation using Decision Tree Classification

# Install and load packages
# install.packages("rpart")
# install.packages("rpart.plot")

library(rpart)
library(rpart.plot)

# Read dataset
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/car/car.data"

mydata <- read.csv(url, header=FALSE)

# Assign column names
colnames(mydata) <- c("buying", "maint", "doors",
                      "persons", "lug_boot", "safety", "class")

# View dataset
View(mydata)
str(mydata)
summary(mydata)

# Check missing values
sum(is.na(mydata))

# Convert variables into factors
mydata[] <- lapply(mydata, as.factor)

# (a) EXPLORATORY DATA ANALYSIS

# Class distribution
barplot(table(mydata$class),
        main="Car Evaluation Class Distribution",
        xlab="Class",
        ylab="Count",
        col="lightblue")

# Visualize all predictor variables
par(mfrow=c(2,3))

for(i in 1:6)
{
  barplot(table(mydata[[i]]),
          main=names(mydata)[i],
          col="lightgreen",
          las=2)
}

par(mfrow=c(1,1))

# Relationship between attributes and class
par(mfrow=c(2,3))

for(i in 1:6)
{
  mosaicplot(table(mydata[[i]], mydata$class),
             main=paste(names(mydata)[i], "vs Class"),
             color=TRUE)
}

par(mfrow=c(1,1))

# (b) DECISION TREE CLASSIFICATION

# Split dataset into training and testing data
set.seed(123)
index <- sample(1:nrow(mydata), 0.7*nrow(mydata))

Training <- mydata[index, ]
Testing <- mydata[-index, ]

# Build Decision Tree model
model <- rpart(class ~ ., data=Training, method="class")

# Display model
print(model)

# Plot decision tree
rpart.plot(model)

# Predict class
Predict <- predict(model, newdata=Testing, type="class")

# (c) PERFORMANCE EVALUATION

# Confusion matrix
confusion_mtx <- table(Actual=Testing$class,
                       Predicted=Predict)
print(confusion_mtx)

# Accuracy
accuracy <- sum(diag(confusion_mtx)) / sum(confusion_mtx)
print(accuracy)

# (d) PRUNING THE DECISION TREE

# Display complexity parameter table
printcp(model)

# Plot cross-validation error
plotcp(model)

# Find best complexity parameter
bestcp <- model$cptable[which.min(model$cptable[,"xerror"]), "CP"]

# Prune decision tree
pruned_model <- prune(model, cp=bestcp)

# Plot pruned tree
rpart.plot(pruned_model)

# Predict using pruned tree
Predict_pruned <- predict(pruned_model,
                          newdata=Testing,
                          type="class")

# Confusion matrix of pruned tree
confusion_pruned <- table(Actual=Testing$class,
                          Predicted=Predict_pruned)
print(confusion_pruned)

# Accuracy of pruned tree
accuracy_pruned <- sum(diag(confusion_pruned)) /
  sum(confusion_pruned)
print(accuracy_pruned)

# Compare model accuracy
cat("Original Tree Accuracy:", accuracy, "\n")
cat("Pruned Tree Accuracy:", accuracy_pruned, "\n")
