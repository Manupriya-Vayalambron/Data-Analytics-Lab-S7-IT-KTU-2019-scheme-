#BUBBLE SORT
a<-c()
n<-as.integer(readline("Enter the limit: "))
for(i in 1:n){
  a[i]<-as.integer(readline(paste("Enter element ",i,": ")))
}

bubble<-function(x){
  swap=TRUE
  while(swap){
    swap=FALSE
    for(i in 1:(length(x)-1)){
      if(x[i]>x[i+1]){
        temp<-x[i]
        x[i]=x[i+1]
        x[i+1]=temp
        swap=TRUE
      }
    }
  }
  return(x)
}

print(bubble(a))