#Develop a R program to sort n numbers and 
#find the factorial of Nth number. 
n=as.integer(readline("Enter value of n: "))
cat("Enter", n,"numbers")
A<-scan()

cat(sort(A))

#factorial
prod=1
for(i in 1:A[n]){
  prod=prod*i
}
cat("\nFactorial of",A[n],"is",prod)

#Find the factorial of a number using a function in R.
fact<-function(x){
  if(x==0){
    return(1)
  }else{
    return(x*fact(x-1)) 
  }
}

a=as.integer(readline("Enter a no:"))
print(fact(a))