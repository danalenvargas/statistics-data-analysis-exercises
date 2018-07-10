# Do professional bull riders stay on their bulls 50% of the time? 
# Test the hypothesis that the mean ride percentage is 0.500 in 2014, 
# using riders with at least 5 events in 2014. 

library(SDSFoundations)
bull <- BullRiders

bull14 <- bull[bull$Events14 >= 5,]

sampleMean <- mean(bull14$RidePer14); sampleMean
sampleSd <- sd(bull14$RidePer14); sampleSd

hist(bull14$RidePer14)

t.test(bull14$RidePer14, mu=0.5)
