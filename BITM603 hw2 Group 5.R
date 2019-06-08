##Homework 2 - PRATIK ,SUNIL JOSHI , SHUBHAM PAL (GROUP 5) ##

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



#importing csv file into R
MyData <- read.csv("C:\\Users\\shubham\\Desktop\\data mining\\ToyotaCorolla.csv")
MyData

#dummy variable for color
colors.f<-factor(MyData$Color)
dummies1 <- model.matrix(~factor(colors.f,nmax=5))
dummies1

#dummy variable for fuel_type
fueltype.f<-factor(MyData$Fuel_Type)
dummies2 <- model.matrix(~factor(fueltype.f,nmax=2))
fueltype.f

#correlation between Price and HP                        
cor(MyData$Price,MyData$HP)
plot(MyData$Price,MyData$HP)

#correlation between KM and HP
cor(MyData$KM,MyData$HP)
plot(MyData$KM,MyData$HP)

#correlation between AirBag1 and AirBag2
cor(MyData$Airbag_2,MyData$Airbag_1)
plot(MyData$Airbag_2,MyData$Airbag_2)


# Co-relation between price and HP , R = 0.31 . As R>0 , one variable is directly propotional to another variable #
# Co-relation between Km and HP , R = -0.0333 . As R<0  , one variable is inversly propotional to another variable #
# Co-relation between AirBag1 and AirBag2 , R=0.28 , As R>0 ,variables are propotional to each other ##






















  
  



