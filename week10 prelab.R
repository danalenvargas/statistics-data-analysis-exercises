library(SDSFoundations)
acl <- AustinCityLimits

#Question 1 (Goodness of Fit)
# Create a table of counts for Gender
gender_tab <-table(acl$Gender)
gender_tab

# Create vector of expected proportions
ExpGender <- c(.50, .50)

# Check expected counts assumption
chisq.test(gender_tab, p=ExpGender)$expected

# Run goodness of fit
chisq.test(gender_tab, p=ExpGender)


#Question 2 (Test of Independence)
# Create two-way table
gender_top10 <-table(acl$Gender, acl$BB.wk.top10)
gender_top10

# Generate expected counts
chisq.test(gender_top10, correct=FALSE)$expected

# Run test of independence
chisq.test(gender_top10, correct=FALSE)
