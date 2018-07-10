library(SDSFoundations)
survey <- StudentSurvey

#population parameters
hist(survey$happy)
fivenum(survey$happy)
mean(survey$happy)
sd(survey$happy)

#sampling distribution, size 5
xbar5 <- rep(NA, 1000)
for(i in 1:1000){
  x <- sample(survey$happy, 5)
  xbar5[i] <- mean(x)
}

hist(xbar5, xlim=c(0,100))
mean(xbar5)
sd(xbar5)
sd(survey$happy)/sqrt(5)

#sampling distribution, size 15
xbar15 <- rep(NA, 1000)
for(i in 1:1000){
  x <- sample(survey$happy, 15)
  xbar15[i] <- mean(x)
}

hist(xbar15, xlim=c(0,100))
mean(xbar15)
sd(xbar15)
sd(survey$happy)/sqrt(15)

#sampling distribution, size 25
xbar25 <- rep(NA, 1000)
for(i in 1:1000){
  x <- sample(survey$happy, 25)
  xbar25[i] <- mean(x)
}

hist(xbar25, xlim=c(0,100))
mean(xbar25)
sd(xbar25)
sd(survey$happy)/sqrt(25)