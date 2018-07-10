library(SDSFoundations)
animaldata <- AnimalData

table(animaldata$Animal.Type[animaldata$Age.Intake>=1])

dogs <- animaldata[animaldata$Animal.Type=='Dog' & animaldata$Age.Intake>=1,]
cats <- animaldata[animaldata$Animal.Type=='Cat' & animaldata$Age.Intake>=1,]

hist(dogs$Weight)
hist(cats$Weight)

mean(cats$Weight)
sd(cats$Weight)

(13-mean(cats$Weight))/sd(cats$Weight)
1-pnorm((13-mean(cats$Weight))/sd(cats$Weight))
#Five-Number Summary for Weight of Dogs
fivenum(dogs$Weight)

#Five-Number Summary for Weight of Cats
fivenum(cats$Weight)


which(dogs$Weight==max(dogs$Weight))
dogs[87,]

pnorm((5.38-6.7)/1.1)
pnorm((8.79-6.7)/1.1)
pnorm((8.79-6.7)/1.1) - pnorm((5.38-6.7)/1.1)
