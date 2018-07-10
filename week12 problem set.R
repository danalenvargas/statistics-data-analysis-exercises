library(SDSFoundations)
library(psych)
library(car)
res <- TempskiResilience

# For clinical science students, after controlling for Gender and Age, what predictor has a greater impact on BDI score - State or Trait anxiety?

clin <- res[res$Group == 'Clinical Sciences',]

bdimod <- lm(BDI ~ Female + Age + State.Anxiety + Trait.anxiety, data = clin)

summary(bdimod)
lmBeta(bdimod)
pCorr(bdimod)

# The tables below shows the regression output, with some numbers erased, when a simple regression model relating a response variable Y to a predictor variable X1 is fitted based on 20 observations. Complete the 7 missing numbers.

SSm <- 1848.76
Fs <- 69.22

dfm <- 2-1
dfr <- 20-2

MSm <- SSm / dfm
MSr <- MSm / Fs

SSr <- dfr * MSr

SStotal <- SSm + SSr

b0 <- -23.4325
se0 <- 12.74
t0 <- b0 / se0

se1 <- 0.1528
t1 <- 8.32
b1 <- t1 * se1

Rsq <- SSm / SStotal

# The tables below show the regression output of a multiple regression model relating the beginning salaries in dollars of employees in a given company to the following predictor variables:

Fcritical <-  qf(.95, df1=4, df2=88); Fcritical

b0 <- 3526.4
bgender <- 722.5
beduc <- 90.02
bexp <- 1.269
bmonths <- 23.406

y1 = b0 + 1 * bgender + 12 * beduc + 10 * bexp + 15 * bmonths; y1
y2 = b0 + 0 * bgender + 12 * beduc + 10 * bexp + 15 * bmonths; y2
