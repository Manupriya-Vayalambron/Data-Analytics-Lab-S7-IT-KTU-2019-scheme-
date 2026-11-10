# C. Consider the dataset “Cust_Segmentation.csv”.
# (a) Pre-process the dataset and do an exploratory analysis on the variables, visualize relationships. Provide some of the insights that you infer from your results.
# (b) Apply customer segmentation on the customer dataset. Justify your clusters.
# (c) Create a profile for the customer segments.


# CUSTOMER SEGMENTATION USING K-MEANS

# Load dataset
mydata <- read.csv("Cust_Segmentation.csv")
View(mydata)

# (a) DATA PREPROCESSING AND EDA

# Structure and summary
str(mydata)
summary(mydata)

# Check missing values
sum(is.na(mydata))

# Remove missing values and duplicates
mydata <- na.omit(mydata)
mydata <- unique(mydata)

# Select numerical columns for clustering
data <- mydata[, sapply(mydata, is.numeric)]

# Remove customer ID if present
data <- data[, !names(data) %in% c("CustomerID", "Customer_ID")]

# Histogram
hist(data$Avg_Credit_Limit,
     main="Average Credit Limit",
     xlab="Credit Limit",
     col="lightblue")

# Scatter plot
plot(data$Total_visits_online, data$Total_visits_bank,
     main="Online Visits vs Bank Visits",
     xlab="Online Visits",
     ylab="Bank Visits",
     col="blue")

# Correlation
cor(data)

# Standardize data
scaled_data <- scale(data)

# (b) CUSTOMER SEGMENTATION

# Elbow method
wss <- numeric(10)

for(i in 1:10)
{
  wss[i] <- kmeans(scaled_data, centers=i, nstart=25)$tot.withinss
}

plot(1:10, wss, type="b",
     main="Elbow Method",
     xlab="Number of Clusters",
     ylab="WSS",
     col="blue")

# Apply K-Means
set.seed(123)
model <- kmeans(scaled_data, centers=3, nstart=25)

# Display clusters
print(model)

# Cluster plot
plot(scaled_data[,1], scaled_data[,2],
     col=model$cluster,
     pch=19,
     main="Customer Segmentation",
     xlab=names(data)[1],
     ylab=names(data)[2])

# Add cluster number
mydata$Cluster <- as.factor(model$cluster)

# (c) CUSTOMER PROFILING

# Cluster-wise customer count
table(mydata$Cluster)

# Average values of each cluster
aggregate(data, by=list(Cluster=model$cluster), mean)

# Display customer segments
print(mydata)
