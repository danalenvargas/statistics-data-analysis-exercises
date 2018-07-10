#In 2012, which variable had the strongest linear relationship with Earnings:  
#Ride Percentage or Cup Points?

library(SDSFoundations)
bull <- BullRiders

newbull <- bull[bull$Events12>0,]

hist(newbull$Earnings12)
fivenum(newbull$Earnings12)

plot(newbull$RidePer12, newbull$Earnings12)
abline(lm(newbull$Earnings12~newbull$RidePer12))
cor(newbull$RidePer12, newbull$Earnings12)
cor(newbull[,c('RidePer12', 'Earnings12')])

plot(newbull$CupPoints12, newbull$Earnings12)
abline(lm(newbull$Earnings12~newbull$CupPoints12))
cor(newbull$CupPoints12, newbull$Earnings12)
cor(newbull[,c('CupPoints12','Earnings12')])

cor(newbull[,c('Earnings12', 'CupPoints12', 'RidePer12')])

which(newbull$Earnings12 == max(newbull$Earnings12))

noOutlier <- newbull[newbull$Earnings12 < 1000000,]

hist(noOutlier$Earnings12)
fivenum(noOutlier$Earnings12)

plot(noOutlier$RidePer12, noOutlier$Earnings12)
abline(lm(noOutlier$Earnings12~noOutlier$RidePer12))
cor(noOutlier$RidePer12, noOutlier$Earnings12)
cor(noOutlier[,c('RidePer12', 'Earnings12')])

plot(noOutlier$CupPoints12, noOutlier$Earnings12)
abline(lm(noOutlier$Earnings12~noOutlier$CupPoints12))
cor(noOutlier$CupPoints12, noOutlier$Earnings12)
cor(noOutlier[,c('CupPoints12','Earnings12')])

cor(noOutlier[,c('Earnings12', 'CupPoints12', 'RidePer12')])