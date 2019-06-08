

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








  
  



