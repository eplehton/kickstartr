#
# Exercises
# 

#############
# 1) Let's continues with the population data. Read the population data to the a data frame.

Finland <- read.csv("Population_in_Finland.csv", header=TRUE, skip=5)


#############
# 2) Create two variables which indicate municipalities with:
#
# Largish population (> 50 000) and small population
# Increasing population and decreasing population.

head(Finland)
Finland$large <- ifelse(Finland$X31.12.2014.Total > 50000,1,0)
table(Finland$large) # How many large and small municipalities are there?

Finland$increasing.pop <- ifelse(Finland$Change.during.2014.Total > 0, 1, 0)
table(Finland$increasing.pop) # How many municipalities are there with increasing population?

############
# 3) Using ddply, calculate some descriptive statistics like mean, standard deviation and frequency
# for:
#
#
# a) large and small cities

library(plyr)
ddply(Finland,.(large), summarize, M = mean(X31.12.2014.Total), SD = sd(X31.12.2014.Total), freq = length(large))


# b) those with increasing and descreasing population

ddply(Finland,.(increasing.pop), summarize, M = mean(X31.12.2014.Total), SD = sd(X31.12.2014.Total), freq = length(large))

# c) for all four categories, large with increasing pop, large with decreasing pop etc.

ddply(Finland,.(large,increasing.pop), summarize, M = mean(X31.12.2014.Total), SD = sd(X31.12.2014.Total), freq = length(large))

###################################
# 4) Find out the equation for the standard error of mean (SEM). Then 
# modify the ddply-calls above to include also it. 

ddply(Finland,.(large), summarize, 
      M = mean(X31.12.2014.Total), 
      SD = sd(X31.12.2014.Total), 
      freq = length(large), 
      SEM = SD/sqrt(freq))

ddply(Finland,.(increasing.pop), summarize, 
      M = mean(X31.12.2014.Total), 
      SD = sd(X31.12.2014.Total), 
      freq = length(large),
      SEM = SD/sqrt(freq))

ddply(Finland,.(large,increasing.pop), summarize, 
      M = mean(X31.12.2014.Total), 
      SD = sd(X31.12.2014.Total), 
      freq = length(large),
      SEM = SD/sqrt(freq))

