library(SDSFoundations)
acl <- AustinCityLimits

males <- acl[acl$Gender=='M',]

genre <- table(males$Genre)
genre

grammy <- table(males$Grammy)
grammy

twoway <- table(males$Genre, males$Grammy)
twoway

barplot(twoway, legend=T, beside=T, xlab='Grammy', ylab='Genre')

prop.table(genre)
prop.table(grammy)

prop.table(twoway, 1)
