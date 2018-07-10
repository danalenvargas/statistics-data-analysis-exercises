library(SDSFoundations)
bull <- BullRiders
bull12 <- bull[bull$Earnings12>0,]

bull12$earnings_per <- bull12$Earnings12/bull12$Events12

hist(bull12$earnings_per)

bull12$log_earnings_per <- log(bull12$earnings_per)

hist(bull12$log_earnings_per)

sampleMean <- mean(bull12$log_earnings_per)
s <- sd(bull12$log_earnings_per)
se <- s/sqrt(29)
tCritical <- qt(.025, 28, lower.tail=FALSE)
moe <- tCritical*se

upperBound <- sampleMean + moe; upperBound
lowerBound <- sampleMean - moe; lowerBound

t.test(bull12$log_earnings_per)

exp(lowerBound)
exp(upperBound)

#========================================================================

weights <- c(29.4, 29.0, 28.4, 28.8, 28.9, 29.3, 28.5, 28.2)
xbar <- mean(weights)
s <- sd(weights)
se <- .43/sqrt(8)
t <- (28.81 - 28.5)/se
t

t.test(weights, mu=28.5)

#=======================================================================

hmu <- 91

size <- 25
xbar <- 93.6
s <- 7.8
se <- s/sqrt(size)

t <- (xbar - hmu)/se
t

tCritical <- qt(.05, df=size-1, lower.tail=FALSE); tCritical

#=======================================================================

size <- 12
xbar <- 42.6
s <- 5.3

tCritical <- qt(.05, df=size-1, lower.tail=F); tCritical

se <- s/sqrt(size)
moe <- tCritical * se

upperBound <- xbar + moe; upperBound
lowerBound <- xbar - moe; lowerBound
