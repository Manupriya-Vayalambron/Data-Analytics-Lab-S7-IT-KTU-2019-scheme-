#Write a R program to count the number of values in a range in a given vector.
cat("Enter elements of vector")
A<-scan()

l<-as.integer(readline("Enter lower limit: "))
u<-as.integer(readline("Enter upper limit: "))

count<-sum(A>=l & A<=u)
print(count)