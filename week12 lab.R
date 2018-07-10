library(SDSFoundations)
res <- TempskiResilience

# 1. For students in the Basic Sciences program, of the four measures of Quality of Life (Physical Health, Psychological, Social Relationships, and Environment), which has the greatest impact on Med School Quality of Life?
# 2. What is the overall proportion of variance accounted for by all four scales?

bas <- res[res$Group == 'Basic Sciences',]

vars <- c("MS.QoL", "WHOQOL.PH", "WHOQOL.PSY", "WHOQOL.SOC", "WHOQOL.ENV")
cor(bas[,vars], use="pairwise.complete.obs")

library(psych)
corr.test(bas[,vars], use="pairwise.complete.obs")

qolMod <- lm(MS.QoL ~ WHOQOL.PH + WHOQOL.PSY + WHOQOL.SOC + WHOQOL.ENV, data=bas)
summary(qolMod)
confint(qolMod)

lmBeta(qolMod)
pCorr(qolMod)

library(car)
vif(qolMod)
plot(qolMod, which=1)
cutoff <- 4/qolMod$df
plot(qolMod, which=4, cook.levels = cutoff, id.n=10)

