#Write a R program to combining two matrices and in both column way and row 
#ways . Then find the index of maximum value of the resultant matrices and compare 
#it with orginal matrix. 

n=as.integer(readline("Enter number of rows: "))
m=as.integer(readline("Enter number of columns: "))

cat("Enter elements of first matrix")
A<-matrix(scan(),nrow=n,ncol=m,byrow=TRUE)

cat("Enter elements of second matrix")
B<-matrix(scan(), nrow=n, ncol=m, byrow=TRUE)

C<-cbind(A,B)
print(C)
D<-rbind(A,B)
print(D)

print(max(C))
print(which.max(C))

print(max(D))
print(which.max(D))

print(max(A))
print(max(B))