#
# Exercises
# 

#############
# 1) Let's continues with the population data. Read the population data to the a data frame.

pop <- read.table("Population_in_Finland.csv", skip=5, header=TRUE, sep=',')

#############
# 2) Create two variables which indicate municipalities with:
#
# Largish population (> 50 000) and small population
# Increasing population and descreasing population.

pop$large <- pop$X31.12.2014.Total > 50000
pop$inc <- pop$Change.during.2014.Total > 0


############
# 3) Using ddply, calculate some descriptive statistics like mean, standard deviation and frequency
# for:
#
#
# a) large and small cities
# b) those with increasing and descreasing population
# c) for all four categories, large with increasing pop, large with decreasing pop etc.

ddply(pop, .(large), summarise,
      M = mean(X31.12.2014.Total),
      SD = sd(X31.12.2014.Total),
      N = length(X31.12.2014.Total))

ddply(pop, .(inc), summarise,
      M = mean(X31.12.2014.Total),
      SD = sd(X31.12.2014.Total),
      N = length(X31.12.2014.Total))

ddply(pop, .(large, inc), summarise,
      M = mean(X31.12.2014.Total),
      SD = sd(X31.12.2014.Total),
      N = length(X31.12.2014.Total))


###################################
# 4) Find out the equation for the standard error of mean (SEM). Then 
# modify the ddply-calls above to include also it. 





