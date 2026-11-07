#piechart
x<-c(600,300,150,100,200)
myl<-c("Housing","Food","Clothes","Entertainment","Others")
color<-c("red","green","blue","yellow","orange")
pie(x,lab=myl,init.angle = 90,clockwise = TRUE,col=color)
legend("bottomleft",myl,fill=color)


# Consider the Titanic dataset, perform the following operations. Show the
# frequency and plot the pie chart for survival and non-survival subsets of the
# following.
# 1. First Class Adult
# 2. Second Class Adult
# 3. Third Class Adult
# 4. Adults in Crew
# 5 Male in First Class
# VI. MaleinSecond Class
# VII.Female in Third Class
# VIII.Female in Crew
# IX. MaleChild
# X. MaleAdult
# XI. Female Child
# XII.Female Adult
# Plot summary and frequency of the dataset along with mosaic.

View(Titanic)
dimnames(Titanic)

#mosaic
library(vcd)
mosaic(~Class+Sex+Age+Survived,data=Titanic,shade=TRUE,
        legend=TRUE)