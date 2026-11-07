#Write a R program to read a square matrix , rotate it 900 clockwise then find 
#the sum, difference and product of matrix and rotated matrix. 

n=as.integer(readline("enter order of matrix: "))
A<-matrix(scan(),nrow=n,ncol=n,byrow=TRUE)
print(A)

#90 degree rotation
B<-t(A[n:1,])
print(B)

print(A+B)
print(A-B)
print(A%*%B)