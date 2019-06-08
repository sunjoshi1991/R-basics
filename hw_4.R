setwd("/Users/sunjoshi/Desktop/R homeworks")
df<- read.csv("Pharmaceuticals.csv")
df

head(df)
P <- df[,3:11]
head(P)
PS <- scale(P)
head(PS)
clus1 <- ((nrow(PS)-1)*sum(apply(PS,2,var)))
clus1
for (i in 2:15) clus1[i] <- sum(kmeans(PS,centers= i)$clus1)
clus1
plot(1:15, clus1,type ="b",xlab="no of clusters",ylab= "within grp of clusters")
fit<- kmeans(PS,5)
aggregate(PS,by = list(fit$cluster),FUN=mean)
PS1<- data.frame(PS,fit$cluster)
PS1
library(cluster)
clusplot(PS,fit$cluster,color = TRUE,shade = TRUE,labels=2,lines=0)