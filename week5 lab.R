library(SDSFoundations)
WR <- WorldRecords

mensMile <- WR[WR$Event == 'Mens Mile',]
womensMile <- WR[WR$Event == 'Womens Mile',]

plot(mensMile$Year, mensMile$Record)
plot(womensMile$Year, womensMile$Record)

linFit(mensMile$Year, mensMile$Record)
linFit(womensMile$Year, womensMile$Record)
