#2) Write an R program to check whether a given number is an Armstrong number or 
#not (user-specified input).

n<-as.integer(readline("Enter a no: "))
copy<-n
sum<-0
while (n!=0){
  rem<-n%%10
  sum<-sum+(rem*rem*rem)
  n<-n%/%10
}
if(sum==copy){
  cat(copy,"is Armstrong")
}else{
  cat(copy,"is Not Armstrong")
}

#3) Write an R program to plot a Bar chart showing the number of students in different 
#departments (CSE, ECE, ME, CE, EE) using a dataset created by the user. 

dept<-c("CSE", "ECE", "ME", "CE", "EE")
students<-c(40,50,60,70,80)

data<-data.frame(dept,students)
data

barplot(data$students,
         names.arg=data$dept,
         xlab="Dept",
         ylab="Students",
         main="Barplot")