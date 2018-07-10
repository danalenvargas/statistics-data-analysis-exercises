library(SDSFoundations)
film <- FilmData

#Do low-budget movies make a different percentage of their profits domestically than movies with medium- or high-budgets? 

film$budgetCategory[film$Budget < 100] <- 'low'
film$budgetCategory[film$Budget >=100 & film$Budget < 150] <- 'medium'
film$budgetCategory[film$Budget >= 150] <- 'high'

table(film$budgetCategory)

aggregate(Pct.Dom~budgetCategory, film, mean)
aggregate(Pct.Dom~budgetCategory, film, sd)

boxplot(film$Pct.Dom~film$budgetCategory)
modelPctDom <- aov(film$Pct.Dom~film$budgetCategory)
summary(modelPctDom)

TukeyHSD(modelPctDom)

# ---------------------

qf(.95, df1=2, df2=42)

#---------------------

ticket <- c(8,4,6,8,6,4,3,7,0,2,7,5,1,2,7,6,5,0)
section <- c()
section[1:6] <- 'Section1'
section[7:12] <- 'Section2'
section[13:18] <- 'Section3'

boxplot(ticket~section)
modelTicket <- aov(ticket~section)
summary(modelTicket)

97.5 + 21

#---------------------

qt(.017, df=11, lower.tail=FALSE)
