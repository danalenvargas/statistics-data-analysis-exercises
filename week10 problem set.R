library(SDSFoundations)
acl <- AustinCityLimits

# You want to know if the proportion of female performers on Austin City Limits Live has changed in the past two years. 

acl$Recent[acl$Year < 2012] <- 0
acl$Recent[acl$Year >= 2012] <- 1

gender_recent <- table(acl$Gender, acl$Recent)
gender_recent


chisq.test(gender_recent, correct=FALSE)$expected
chisq.test(gender_recent, correct=FALSE)


# When crossing white and yellow summer squash, a genetic model predicts that 75% of resulting offspring will be white, 15% will be yellow and 10% will be green. 
# Below are the results from an experiment run on a random sample of 205 squash offspring.
# Color 	White 	Yellow 	Green
# Number of Offspring 	152 	39 	14

#vectorsquash <- c(152, 39, 14)
vectorsquash <- c()
vectorsquash[1:152] <- 'White'
vectorsquash[153:191] <- 'Yellow'
vectorsquash[192:205] <- 'Green'
tabsquash <- table(vectorsquash)
tabsquash

expsquash <- c(.10, .75, .15)

chisq.test(tabsquash, p=expsquash)$expected

qchisq(.05, df=2, lower.tail=FALSE)
chisq.test(tabsquash, p=expsquash)


# Approximately 13% of the world's population is left-handed, but is this proportion the same across men and women?
# To answer this question, you decide to collect data from a random sample of adults from your neighborhood, with the following results: 

gender <- c('M','M','F','M','F','F','F','M','F','F','M','F','M','M','F','M','M','F','F','M','F')
hand <- c('L','R','R','R','R','L','L','R','R','R','L','R','R','R','R','R','R','R','L','R','R')

gender_hand <- table(gender, hand)
gender_hand

chisq.test(gender_hand, correct=FALSE)$expected
chisq.test(gender_hand, correct=FALSE)

qchisq(.05, df=1, lower.tail=FALSE)

# A telephone survey asked a random sample of Indiana voters about their home internet usage, as well as what type of community (rural, suburban or urban) they lived in. 
# Of the 123 survey respondents, 28 were from rural areas, 42 were from suburban areas, and 53 were from urban areas.  Thirteen rural respondents, 35 suburban respondents, and 50 urban respondents said they had access to internet at home. 

matrixComInt <- matrix(c(13, 35, 50, 28-13, 42-35, 53-50), ncol = 3, byrow=TRUE)
colnames(matrixComInt) <- c('rural', 'suburban', 'urban')
rownames(matrixComInt) <- c('internet', 'no internet')

tabComInt <- as.table(matrixComInt)
tabComInt

prop.table(tabComInt)
(13 + 35 + 50) / 123

chisq.test(tabComInt, correct=FALSE)$expected
chisq.test(tabComInt, correct=FALSE)
