#Create a data frame with field Employee_Name, Employee_id, Designation  
#and Salary. Write a R program . 
#1) To extract specific column from a data frame using column name. 
#2) Sort the value based on name and salary field. 
#3) Reorder the data frame by column  Designation.

employee<-data.frame(
  Employee_Name=c("C","A","D","B","E"),
  Employee_id=c(100,200,300,400,500),
  Designation=c("HR","Accountant","Manager","Technician","Leader"),
  Salary=c(10000,40000,30000,12000,54000)
)

#1
print(employee$Employee_id)

#2
print(employee[order(employee$Employee_Name),])
print(employee[order(employee$Salary),])

#3
employee<-employee[order(employee$Designation),]
print(employee)