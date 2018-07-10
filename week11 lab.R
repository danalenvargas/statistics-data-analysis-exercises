library(SDSFoundations)
film <- FilmData

# 1. Are some studios more successful in keeping their films in the theaters longer?
# 2. Do some studios earn a greater percentage of their earnings domestically than others?

#-------------------- Q1 ---------------------

table(film$Studio)

aggregate(Days~Studio, film, mean)
aggregate(Days~Studio, film, sd)

boxplot(film$Days~film$Studio, main='Days in Theater by Studio', xlab='Studio', ylab='Days')

modelDays <- aov(film$Days~film$Studio)
summary(modelDays)

TukeyHSD(modelDays)


#-------------------- Q2 ---------------------

aggregate(Pct.Dom~Studio, film, mean)
aggregate(Pct.Dom~Studio, film, sd)

boxplot(film$Pct.Dom~film$Studio, main='Percentage of Earnings Domestic by Studio', xlab='Studio', ylab='Pct Domestic')

modelPctDom <- aov(film$Pct.Dom~film$Studio)
summary(modelPctDom)

TukeyHSD(modelPctDom)
