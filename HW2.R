

####### Question_1 #######

firm<-"xyz"
division<-c("divisionA","divisionB")
Name <-c('gerald', 'helen', 'sean','dominic','brendan', 'ishan','clint')
Division<-c('A','A','A','A','B','B','B')
Speciality<- c('Finance','Marketing','Product dev','Management','Sales','Marketing','Finance')
Revenue<- c(10,15,18,6,8,9,7)

## a ## 
firm_df<-data.frame(Name,Division,Speciality,Revenue)

### b ###
firm_list <- list(firm,division,firm_df)

firm_list
### c ###
req_df<-as.data.frame(firm_list[3])
A_data <-subset(req_df,Division=="A")
A_data

A_avg_rev<-mean(A_data$Revenue)
A_avg_rev

#### d #####
B_data<-subset(req_df,Division=="B")
B_data
B_tot_rev <- sum(B_data$Revenue)
B_tot_rev




####### Question_2 ########
data <-mtcars
data1<-mtcars$mpg
data2<- data1>14 & data1<20
data3<- sum(data2)
data3


######  Question_3 #######


a <-mtcars
b <- mtcars$disp
c<- b<100 | b>300
d<- sum(c)
d



###### Question_4 #####


score <- 70

if (score >= 90){
  print("Grade A")
  }else if(score >=80 & score <90){
  print("Grade B")
}else if(score>=70 & score<80){
  print("Grade C")
  }else if (score>=60 & score < 70){
    print("Grade D")
  }else print ("Grade F")

####### Question_5 #######

####### a #############
setwd("/Users/sunjoshi/Desktop/R homeworks")
getwd()

df<- read.csv("ToyotaCorolla.csv")

categorical_variable <- sapply(df, class)
categorical_variable

############ b #########

"The realtion between dummy and categorical variable is:
  A.if any categorical data is present it is represented by 1 (Yes) that mean some kind of data is present and 
  B. 0(No) refers to absence of data. So  dummy variables are indicated by either 0 or 1"



########### c #########
"N-1 dummy variables are required to capture information of N categorical variables "

########## d ##########

dummy_var < -model.matrix(~factor(categorical_variable))

dum <-  lapply(dummy_var,as.numeric)

dum

"in the data dum for one record the data type is integer and its indicated by 1 bcoz some data is present there."

########## e ##########


correlation <- cor()




















5. Sales of Toyota Corolla Cars. The file ToyotaCorolla.csv contains data on used cars (Toyota Corollas) on sale during late summer of 2004 in the Netherlands. It has 1436 records containing details on 38 attributes, including Price, Age, Kilometers, HP, and other specifications. The goal will be to predict the price of a used Toyota Corolla based on its specifications.
a. Identify the categorical variables.
b. Explain the relationship between a categorical variable and the series of binary dummy variables derived from it.
c. How many dummy binary variables are required to capture the information in a categorical variable with N categories?
  d. Use R to convert the categorical variables in this dataset into dummy variables, and explain in words, for one record, the values in the derived binary dummies.
Hint: Use model.matrix(~factor()) function for categorization
e. Use R to produce a correlation matrix and matrix plot. Comment on the relationships among variables.
Hint: Use cor() and plot() functions for correlational analysis
Note that correlation matrix can only be created for numeric. So remove any non-numeric columns. Use na.omit() to eliminate rows with missing data.
If it says figure margins are too large, select a subset of the variables to plot them.


  
  



