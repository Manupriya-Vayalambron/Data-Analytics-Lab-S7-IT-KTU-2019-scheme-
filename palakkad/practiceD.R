# Consider the dataset that has four variables:- admit, GRE score, GPA, and rank.  
# (a) Do an exploratory analysis on the variables, visualize relationships and provide some of 
# the insights that you infer from your results. 
# (b)  Run a model to predict the probability of the student getting admit. Interpret the 
# coefficient estimates of the predictor variables. 
# (c) Measure the performance metrics of your model after running it on a test data set.
# (d) Assume a new observation of a student for the predictor variables in your model and 
# predict the admit variable of the student. 

# Logistic Regression - Student Admission Prediction

# Read dataset
mydata <- read.csv("admission.csv")

# View dataset
View(mydata)
str(mydata)
summary(mydata)

# Check missing values
sum(is.na(mydata))

# Exploratory Data Analysis

# Admission distribution
barplot(table(mydata$admit),
        main="Admission Distribution",
        xlab="Admission",
        ylab="Count",
        col="lightblue")

# GRE score vs Admission
boxplot(gre ~ admit, data=mydata,
        main="GRE Score vs Admission",
        xlab="Admission",
        ylab="GRE Score",
        col="lightgreen")

# GPA vs Admission
boxplot(gpa ~ admit, data=mydata,
        main="GPA vs Admission",
        xlab="Admission",
        ylab="GPA",
        col="lightyellow")

# Rank vs Admission
barplot(table(mydata$rank, mydata$admit),
        beside=TRUE,
        main="Rank vs Admission",
        xlab="Rank",
        ylab="Count",
        col=c("lightblue", "pink"),
        legend=TRUE)

# Correlation
cor(mydata[, c("gre", "gpa", "rank")])

# Split dataset into training and testing data
set.seed(123)
index <- sample(1:nrow(mydata), 0.7*nrow(mydata))

Training <- mydata[index, ]
Testing <- mydata[-index, ]

# Build Logistic Regression model
model <- glm(admit ~ gre + gpa + rank,
             data=Training,
             family=binomial)

# Display model summary
summary(model)

# Predict probability
Predict <- predict(model, newdata=Testing, type="response")

# Convert probability into class
Predicted_Class <- ifelse(Predict >= 0.5, 1, 0)


# Confusion matrix
confusion_mtx <- table(Actual=factor(Testing$admit, levels=c(0,1)),
                       Predicted=factor(Predicted_Class, levels=c(0,1)))
print(confusion_mtx)

# Accuracy
accuracy <- sum(diag(confusion_mtx)) / sum(confusion_mtx)
print(accuracy)

# Precision
precision <- ifelse(sum(confusion_mtx[,2]) == 0, 0,
                    confusion_mtx[2,2] / sum(confusion_mtx[,2]))
print(precision)

# Recall
recall <- ifelse(sum(confusion_mtx[2,]) == 0, 0,
                 confusion_mtx[2,2] / sum(confusion_mtx[2,]))
print(recall)

# F1 Score
F1 <- ifelse(precision + recall == 0, 0,
             2 * precision * recall / (precision + recall))
print(F1)

# (d) Predict admission for a new student

# Create a new observation
new_student <- data.frame(gre=650, gpa=3.8, rank=2)

# Predict admission probability
new_predict <- predict(model, newdata=new_student, type="response")
print(new_predict)

# Predict admission class
new_class <- ifelse(new_predict >= 0.5, 1, 0)
print(new_class)
