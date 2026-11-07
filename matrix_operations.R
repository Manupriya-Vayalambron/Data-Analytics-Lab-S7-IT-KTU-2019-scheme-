#Matrix addition, subtraction, multiplication and searching
n<-as.integer(readline("Enter order of matrix: "))

cat("Enter elements of first matrix: ")
A<-matrix(scan(),nrow=n,ncol=n,byrow=TRUE)

cat("Enter elements of second matrix: ")
B<-matrix(scan(),nrow=n,ncol=n,byrow=TRUE)

C<-A+B
D<-A-B
E<-A%*%B

cat("Addition: ",C,"\nSubtraction: ",D,"\nMultiplication: ",E)

searched<-as.integer(readline("Enter number to be searched: "))

if(searched%in%A){
  print("Element found in first matrix")
  
  #printing index if element found
  index<-which(A==searched,arr.ind=TRUE)
  print(index)
}else{
  print("Element not found in first matrix")
}


#-------------------------------
#Write a R program to concatenate two given matrices of 
#same column but different row

r1=as.integer(readline("Enter no. of rows of first matrix: "))
c1=as.integer(readline("Enter no. of cols: "))

M1<-matrix(scan(),nrow=r1,ncol=c1,byrow=TRUE)

r2=as.integer(readline("Enter no. of rows of second matrix: "))
M2<-matrix(scan(),nrow=r2,ncol=c1,byrow=TRUE)

Combine<-rbind(M1,M2)
print(Combine)