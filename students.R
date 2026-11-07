#Create a data frame with field Name, Class, Marks and Grade.
#Write a R program  
#1) To extract third and fifth row with first and third column from a given 
#data frame. 
#2) To add a new column in a given data frame . 
#3) Reorder the data frame by column name.

students<-data.frame(
  Name=c("A","B","C","D","E"),
  Class=c("III","X","IV","IX","VIII"),
  Marks=c(100,50,42,90,32),
  Grade=c("S","D","B","A","C")
)

print(students[c(3,5),c(1,3)])

students$Age<-c(10,16,9,15,11)
print(students)

print(students[order(students$Class),])