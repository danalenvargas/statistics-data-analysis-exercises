# 1. Do students at UT spend more time on homework per week in college than they did in high school?
# 2. Do students in fraternities and sororities get less sleep on the weekends than other college students? 

library(SDSFoundations)
post <- PostSurvey

# ------------ Q1 ------------

post$diff_hw_hours <- post$hw_hours_HS - post$hw_hours_college

hist(post$diff_hw_hours)

t.test(post$hw_hours_HS, post$hw_hours_college, paired=T, alternative='less')
t.test(post$hw_hours_college, post$hw_hours_HS, paired=T, alternative='greater')

# ------------ Q2 ------------

greek <- post$sleep_Sat[post$greek=='yes']
notGreek <- post$sleep_Sat[post$greek=='no']

hist(greek)
hist(notGreek)

t.test(greek, notGreek, alternative='less')
