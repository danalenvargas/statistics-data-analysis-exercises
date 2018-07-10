library(SDSFoundations)
world <- WorldBankData

brazil <- world[world$Country == 'Brazil',]
bSelect <- brazil[brazil$year >= 1995,]

bSelect$time <- bSelect$year - 1995
bSelect$mobile.mil <- bSelect$mobile.users/1000000

bSelect$mobile.mil[bSelect$year == 2000]
min(bSelect$year[bSelect$mobile.users>100000000])

plot(bSelect$time, bSelect$mobile.mil)
expFit(bSelect$time, bSelect$mobile.mil)
logisticFit(bSelect$time, bSelect$mobile.mil)

logisticFitPred(bSelect$time, bSelect$mobile.mil, 30)


x = c(1,3)
y = c(25,45)
linFit(x,y)

expFit(x,y)
