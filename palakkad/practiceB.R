# B.    Consider the “OJ” data set from ISLR package in R that contains information about Orange juice purchases.
# (a)    Do an exploratory analysis on the variables, visualize relationships and provide some of the insights that you infer from your results.
# (b)    Build a decision tree classifier to take a decision on orange juice purchase
# (c)    Prune the tree and compare it with the model obtained in (b).


# OJ DATASET - DECISION TREE

# Install and load package
install.packages("ISLR")
install.packages("tree")

library(ISLR)
library(tree)

# Load dataset
data(OJ)
mydata <- OJ
View(mydata)

# (a) EXPLORATORY DATA ANALYSIS

# Structure and summary
str(mydata)
summary(mydata)

# Frequency of purchase
table(mydata$Purchase)

# Bar plot
barplot(table(mydata$Purchase),
        main="Orange Juice Purchase",
        xlab="Purchase",
        ylab="Frequency",
        col="lightblue")

# Boxplot
boxplot(PriceCH ~ Purchase, data=mydata,
        main="Price of CH by Purchase",
        col="lightgreen")

# (b) DECISION TREE CLASSIFICATION

# Split data into training and testing
set.seed(123)
index <- sample(1:nrow(mydata), 0.7*nrow(mydata))

Training <- mydata[index, ]
Testing <- mydata[-index, ]

# Build decision tree
model <- tree(Purchase ~ ., data=Training)

# Display model
summary(model)

# Plot decision tree
plot(model)
text(model, pretty=0)

# Prediction
Predict <- predict(model, Testing, type="class")

# Confusion matrix
confusion_mtx <- table(Testing$Purchase, Predict)
print(confusion_mtx)

# Accuracy
accuracy <- mean(Predict == Testing$Purchase)
print(accuracy)

# (c) TREE PRUNING

# Cross-validation
cv <- cv.tree(model, FUN=prune.misclass)

# Plot cross-validation results
plot(cv)

# Prune tree
pruned_model <- prune.misclass(model, best=5)

# Plot pruned tree
plot(pruned_model)
text(pruned_model, pretty=0)

# Prediction using pruned tree
Predict_pruned <- predict(pruned_model, Testing, type="class")

# Confusion matrix of pruned tree
confusion_pruned <- table(Testing$Purchase, Predict_pruned)
print(confusion_pruned)

# Accuracy of pruned tree
accuracy_pruned <- mean(Predict_pruned == Testing$Purchase)
print(accuracy_pruned)
