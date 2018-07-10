library(SDSFoundations)
world <- WorldBankData

denmark <- world[world$Country == 'Denmark',]
denmark_select <- denmark[denmark$year >= 1990,]

denmark_select$time <- denmark_select$year - 1990

denmark_select$internet.prop <- denmark_select$internet.users / denmark_select$population

expFit(denmark_select$time, denmark_select$internet.prop)
logisticFit(denmark_select$time, denmark_select$internet.prop)

expX <- logb(.7/.00585, 1.34666)
logiX <- -(logb((0.89668/.7 - 1)/308.8322, 1.73123))
           
           