x<-c()
for(i in 1:5){
  a<-as.integer(readline("Enter a number: "))
  x<-append(x,a)
}
print(sum(x))
print(mean(x))
print(prod(x))
