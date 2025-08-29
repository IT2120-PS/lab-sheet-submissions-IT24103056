#Q1
setwd("C:\\Users\\nirgn\\OneDrive\\Desktop\\it24103056 lab05")
getwd()
Delivery_Times<-read.table("Exercise - Lab 05.txt" , header = TRUE ,sep = ",")
fix(Delivery_Times)
attach(Delivery_Times)

#Q2

names(Delivery_Times)<-c("X1")
attach(Delivery_Times)

hist(X1,main = "Histogram for deliver times")

histogram<-hist(X1,main = "Histogram for deliver times" ,breaks = seq(20,70,length=10),right = FALSE)

#Q4
breaks <-round(histogram$breaks)
breaks
freq <- histogram$counts
freq
mids<-histogram$mids
mids

cum.freq<-cumsum(freq)

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l',main = "Cumulative frequency polygon for deliver Time",
     xlab="Deliver Times" ,ylab = "Cumulative frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,CumFreq = new)