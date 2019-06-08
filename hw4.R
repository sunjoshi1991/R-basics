m <- 1
num <- vector("numeric")
while (m<8) {
  for (i in 1:m) {
    num[i] <- m
    
  }
  print(num)
  m = m+1
}

setwd("/Users/sunjoshi")
Pharmaceuticals_df <- read.csv("\\Users\\sunjoshi\\Pharmaceuticals.csv")