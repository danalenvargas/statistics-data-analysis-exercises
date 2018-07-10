# Import the BikeData dataset, name it "bike"
library(SDSFoundations)
bike <- BikeData
# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)

table(bike$cyc_freq)

dailyRiders <- bike[bike$cyc_freq=='Daily',]

table(dailyRiders$gender)

ages <- dailyRiders$age
maleAges <- dailyRiders$age[dailyRiders$gender=='M']
femaleAges <- dailyRiders$age[dailyRiders$gender=='F']

mean(maleAges)
mean(femaleAges)
mean(ages)

dailyMales <- dailyRiders[dailyRiders$gender=='M',]
dailyMales30 <- dailyMales[dailyMales$age >= 30,]
