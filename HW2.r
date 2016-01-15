### William Isaac | July 7, 2013 | Homework 2
###################################################

###################################################
### Code Chunk one | Setting File Dir & Libraries
###################################################

getwd()
setwd("C:/Users/William/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)")
library(foreign)
library(MASS)

###################################################
### Code Chunk Two | Reading in Stata File
###################################################

hw2 <- read.dta("Data for Exercise 2 (2008 ANES).dta")
ls(hw2)



###################################################
### Code Chunk Three | Ordered Logit Estimation
###################################################

hw2.logit<-polr(as.factor(outlook)~ as.factor(dem) + as.factor(rep) 
+ as.factor(gender) + income,data=hw2)
summary(hw2.logit)

hw2.logit1<-polr(as.factor(perfin)~ as.factor(dem) + as.factor(rep) 
+ as.factor(gender) + income,data=hw2)
summary(hw2.logit1)


###################################################
### Code Chunk Four | Predicted Probability Plot
###################################################
income<-seq(0,25,1)
dem <-0
rep <-0
gender <- 1
outlooksim<-cbind(income,dem,gender,rep)
outlook.hat<-predict(hw2.logit,outlooksim,type='probs')
png("C:/Users/William/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - PPP Outlook.png")
plot(c(0,27), c(0,1), type='n', xlab="Income", ylab='Fitted Probability')
lines(1:25, outlook.hat[1:25, 1], lty=1, lwd=1)
lines(1:25, outlook.hat[1:25, 2], lty=2, lwd=1)
lines(1:25, outlook.hat[1:25, 3], lty=3, lwd=1)
legend(20, .5 , c("Gotten Worse", "Stayed Same", "Gotten Better") , cex=0.8, lty = 1:3, lwd=1, title="Legend")
dev.off()

perfin.hat<-predict(hw2.logit1,outlooksim,type='probs')
png("C:/Users/William/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - PPP Perfin.png")
plot(c(0,27), c(0,1), type='n', xlab="Income", ylab='Fitted Probability')
lines(1:25, perfin.hat[1:25, 1], lty=1, lwd=1)
lines(1:25, perfin.hat[1:25, 2], lty=2, lwd=1)
lines(1:25, perfin.hat[1:25, 3], lty=3, lwd=1)
legend(21, 1 , c(" Worse", " Same", " Better") , cex=0.8, lty = 1:3, lwd=1, title="Legend")
dev.off()

##########################################################
### Code Chunk Five | Cumulative Predicted Probability 
##########################################################
png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - CPP Outlook.png")
xaxis<-c(0,0:25,25)
yaxis1<-c(0,outlook.hat[,1],0)
yaxis2<-c(0,outlook.hat[,2] + outlook.hat[,1],0)
yaxis3<-c(0,outlook.hat[,3]+outlook.hat[,2]+outlook.hat[,1],0)
plot(c(0,25), c(0,1), type='n', xlab="Income", ylab="Cumulative Probability")
polygon(xaxis,yaxis3,col="white")
polygon(xaxis,yaxis2,col="grey80")
polygon(xaxis,yaxis1,col="grey50")
legend(18, .2 , c(" Worse", " Same", " Better") , fill = c("grey50","grey80","White"), bg="white", cex=0.8 , title="Legend")
dev.off()

png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - CPP Perfin.png")
xaxis<-c(0,0:25,25)
yaxis1<-c(0,perfin.hat[,1],0)
yaxis2<-c(0,perfin.hat[,2] + perfin.hat[,1],0)
yaxis3<-c(0,perfin.hat[,3]+perfin.hat[,2]+perfin.hat[,1],0)
plot(c(0,25), c(0,1), type='n', xlab="Income", ylab="Cumulative Probability")
polygon(xaxis,yaxis3,col="white")
polygon(xaxis,yaxis2,col="grey80")
polygon(xaxis,yaxis1,col="grey50")
legend(18, .2 , c(" Worse", " Same", " Better") , fill = c("grey50","grey80","White"), bg="white", cex=0.8 , title="Legend")
dev.off()### William Isaac | July 7, 2013 | Homework 2
###################################################

###################################################
### Code Chunk one | Setting File Dir & Libraries
###################################################

getwd()
setwd("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)")
library(foreign)
library(MASS)

###################################################
### Code Chunk Two | Reading in Stata File
###################################################

hw2 <- read.dta("Data for Exercise 2 (2008 ANES).dta")
ls(hw2)



###################################################
### Code Chunk Three | Ordered Logit Estimation
###################################################

hw2.logit<-polr(as.factor(outlook)~ as.factor(dem) + as.factor(rep) 
+ as.factor(gender) + income,data=hw2)
summary(hw2.logit)

hw2.logit1<-polr(as.factor(perfin)~ as.factor(dem) + as.factor(rep) 
+ as.factor(gender) + income,data=hw2)
summary(hw2.logit1)


###################################################
### Code Chunk Four | Predicted Probability Plot
###################################################
income<-seq(0,25,1)
dem <-0
rep <-0
gender <- 1
outlooksim<-cbind(income,dem,gender,rep)
outlook.hat<-predict(hw2.logit,outlooksim,type='probs')
png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - PPP Outlook.png")
plot(c(0,27), c(0,1), type='n', xlab="Income", ylab='Fitted Probability')
lines(1:25, outlook.hat[1:25, 1], lty=1, lwd=1)
lines(1:25, outlook.hat[1:25, 2], lty=2, lwd=1)
lines(1:25, outlook.hat[1:25, 3], lty=3, lwd=1)
legend(20, .5 , c("Gotten Worse", "Stayed Same", "Gotten Better") , cex=0.8, lty = 1:3, lwd=1, title="Legend")
dev.off()

perfin.hat<-predict(hw2.logit1,outlooksim,type='probs')
png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - PPP Perfin.png")
plot(c(0,27), c(0,1), type='n', xlab="Income", ylab='Fitted Probability')
lines(1:25, perfin.hat[1:25, 1], lty=1, lwd=1)
lines(1:25, perfin.hat[1:25, 2], lty=2, lwd=1)
lines(1:25, perfin.hat[1:25, 3], lty=3, lwd=1)
legend(21, 1 , c(" Worse", " Same", " Better") , cex=0.8, lty = 1:3, lwd=1, title="Legend")
dev.off()

##########################################################
### Code Chunk Five | Cumulative Predicted Probability 
##########################################################
png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - CPP Outlook.png")
xaxis<-c(0,0:25,25)
yaxis1<-c(0,outlook.hat[,1],0)
yaxis2<-c(0,outlook.hat[,2] + outlook.hat[,1],0)
yaxis3<-c(0,outlook.hat[,3]+outlook.hat[,2]+outlook.hat[,1],0)
plot(c(0,25), c(0,1), type='n', xlab="Income", ylab="Cumulative Probability")
polygon(xaxis,yaxis3,col="white")
polygon(xaxis,yaxis2,col="grey80")
polygon(xaxis,yaxis1,col="grey50")
legend(18, .2 , c(" Gotten Worse", " Stayed Same", " Gotten Better") , fill = c("grey50","grey80","White"), bg="white", cex=0.8 , title="Legend")
dev.off()

png("C:/Users/Acer/Dropbox/School/Summer 2013/ICPSR/MLE/Exercise 2 (7-3-12)/HW2 - CPP Perfin.png")
xaxis<-c(0,0:25,25)
yaxis1<-c(0,perfin.hat[,1],0)
yaxis2<-c(0,perfin.hat[,2] + perfin.hat[,1],0)
yaxis3<-c(0,perfin.hat[,3]+perfin.hat[,2]+perfin.hat[,1],0)
plot(c(0,25), c(0,1), type='n', xlab="Income", ylab="Cumulative Probability")
polygon(xaxis,yaxis3,col="white")
polygon(xaxis,yaxis2,col="grey80")
polygon(xaxis,yaxis1,col="grey50")
legend(18, .2 , c(" Worse", " Same", " Better") , fill = c("grey50","grey80","White"), bg="white", cex=0.8 , title="Legend")
dev.off()