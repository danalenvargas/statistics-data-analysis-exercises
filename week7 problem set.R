library(SDSFoundations)
survey <- StudentSurvey

hist(survey$austin)
mean(survey$austin)
sd(survey$austin)

sd(survey$austin)/sqrt(10)

xbar10 <- rep(NA, 1000)
for(i in 1:1000){
  x <- sample(survey$austin, 10)
  xbar10[i] <- mean(x)
}

hist(xbar10)
mean(xbar10)
sd(xbar10)

#===============================================

(3.2-3.08) / .40
1-pnorm(.3)

.40/sqrt(25)

se = .40/sqrt(25)

pnorm((3.2 - 3.08)/se) - pnorm((2.9 - 3.08)/se)

pnorm((3.2 - 3.08)/.40)
1 - pnorm((2.9 - 3.08)/.40)

#===============================================

popMean <- 28
popSd <- 11

sampleSize <- 23
sampleMean <- 35.1

se = popSd/sqrt(sampleSize)
se

sampleZ = (sampleMean - popMean) / se
sampleZ
1-pnorm(sampleZ)

#===============================================

popSd <- 1.5

sampleMean <- 471.46
sampleSize <- 15

se <- popSd/sqrt(sampleSize)
se

pnorm(1.96)-pnorm(-1.96)

errorMargin <- 1.96 * se
errorMargin

confidenceInterval = c(sampleMean - errorMargin, sampleMean + errorMargin)
confidenceInterval
