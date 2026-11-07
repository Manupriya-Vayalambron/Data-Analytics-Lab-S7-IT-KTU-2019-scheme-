#Read two vectors and combine these vectors then find the Nth highest 
#value of the resultant vector.

cat("Enter first vector")
A<-scan()

cat("Enter second vector")
B<-scan()

C<-unique(c(A,B)) #to prevent duplicated from getting combined

n=as.integer(readline("Enter value of N: "))
Sorted<-sort(C,decreasing=TRUE)
print(Sorted)
cat("Nth highest vector is: ",Sorted[n])