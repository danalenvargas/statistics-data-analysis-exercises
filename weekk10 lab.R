library(SDSFoundations)
acl <- AustinCityLimits

# 1. Are each of the four musical genres equally represented on Austin City Limits?   

tgenre <- table(acl$Genre)
tgenre

expgenre <- c(.25, .25, .25, .25)

chisq.test(tgenre, p=expgenre)$expected
chisq.test(tgenre, p=expgenre)


# 2. Are some genres more likely to draw a large (100K+) Twitter following than others?

tgenretwitter <- table(acl$Genre, acl$Twitter.100k)
tgenretwitter

prop.table(tgenretwitter, 1)

chisq.test(tgenretwitter, correct=FALSE)$expected
chisq.test(tgenretwitter, correct=FALSE)
