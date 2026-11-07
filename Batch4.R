#Write an R program to count the number of vowels and consonants in a given string. 
word<-tolower(readline("Enter a word: "))
chars<-strsplit(word,"")[[1]]
vowels<-sum(chars %in% c("a","e","i","o","u"))
consonants<-sum(chars %in% letters)-vowels

print(vowels)
print(consonants)

#2. Using the mtcars dataset in R, 
#a. Create a scatterplot of wt vs mpg. 
#b. Create a boxplot of hp grouped by cyl.
#c. Create a histogram

plot(mtcars$wt,mtcars$mpg,
     main="scatterplot",
     xlab="weight",
     ylab="miles per gallon",
     pch=19,
     col="lightblue")


boxplot(hp~cyl,data=mtcars,
        ylab="Horsepower",
        xlab="Number of cylinders",
        main="boxplot",
        col="blue")

hist(mtcars$mpg,
     main="histogram",
     xlab="Miles per Gallon",
     col="lightblue")

#3. Write an R program to: 
  #1. Create a data frame students with columns: Name, Maths, Science, English. 
  #2. Add a new column Total = sum of all subjects. 
  #3. Add another column Average = mean of marks. 
  #4. Find overall class mean, median, and mode for each subject
  #5. Melt the data frame to show subject-wise marks per student. 
  #6. Use cast() to calculate average marks of each subject.

library(reshape2)

students<-data.frame(
  Name=c("A","B","C","D","E"),
  Maths=c(50,60,70,50,50),
  Science=c(10,20,30,40,50),
  English=c(90,100,80,70,60)
)

students$Total=students$Maths+students$Science+students$English
students$Average=students$Total/3

print(students$Total)
print(students$Average)

find_mode<-function(x){
  counts<-table(x)
  as.numeric(names(counts)[which.max(counts)])
}

print(mean(students$Maths))
print(median(students$Maths))
print(find_mode(students$Maths))

print(mean(students$Science))
print(median(students$Science))
print(find_mode(students$Science))

print(mean(students$English))
print(median(students$English))
print(find_mode(students$English))

melted<-melt(students,
             id.vars="Name",
             meausre.vars=c("Maths","Science","English"),
             variable.name="Subject",
             value.name="Marks")
print(melted)

result<-dcast(melted,Subject~.,
              fun.aggregate=mean,value.var="Marks")
print(result)

