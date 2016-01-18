#
# Exercises
# 

##############################
# 1) Load data the academics data from the file academics_data.R or from one of the
# text files you created during the previous assignments. 

source('academics_data.R')
# or
academics <- read.table("academics.txt")

##############################
# 2) How could we ask for the summary of all variables for females?
# 
# Hint: Learn to solve the problems by dividing it to smaller steps. 
# Solve first the problem of subsetting the females out of the data frame. 
# Then solve the problem of describing them.

academics.f <- academics[academics$gender == 'F',]

require(psych)
describe(academics.f) # well, a bit silly to describe only two cases :)

##############################
# 3) Are the salaries of the females and males in this sample of academics equal?

academics.m <- academics[academics$gender == 'M',]

# e.g. or use describe
mean(academics.m$salaryBeforeTaxes)
mean(academics.f$salaryBeforeTaxes)

# if you wish
mean(academics.m$salaryBeforeTaxes) == mean(academics.f$salaryBeforeTaxes)
# but of course in empirical data two groups means would practically 
# never been exactly equal and the number of cases is too low for testing

##############################
# 4) Load data frame from file Population_in_Finland.csv.
#
# Hint: The file contain the title and some meta information in the beginning.
# Use parameter skip with read.table to ignore them. 
# You may also need to set header=TRUE explicitly.  


# skip=5 skip the first 5 lines which before the actual data and header
pop <- read.table("Population_in_Finland.csv", skip=5, header=TRUE, sep=',')

#############################
# 5) Divide the population data by the population change (decreasing, increasing). 
#
# Before you find out the right answers to the following questions based on the data, 
# try create a hypothesis:
#
# Are there more municipalities with increasing population than with decreasing population? 
#
# Are municipalities with increasing population larger than those with decreasing population?

pop.inc <- pop[ pop$Change.during.2014.Total > 0,]
pop.dec <- pop[ pop$Change.during.2014.Total < 0,] 
# note, there could be 0 zero change!

describe(pop.inc)
describe(pop.dec)

############################
# 6) What is the correlation of the population change of males and females?

cor(pop$Change.during.2014.Males, pop$Change.during.2014.Females)

############################
# 7) Is there municipalities which attract more females than males and vice versa? 
# Updated: The question is actually a bit complicated. You can just look for example
# is there municipalities which has females moving in and males moving out.


pop.incF.decM <- pop[ (pop$Change.during.2014.Females > 0) & (pop$Change.during.2014.Males < 0) ,]
pop.decF.incM <- pop[ (pop$Change.during.2014.Females < 0) & (pop$Change.during.2014.Males > 0) ,]

# now with dim, could use describe too
dim(pop.incF.decM)
dim(pop.decF.incM)

# ok, there are 18 with increasing number of females but descreasing number of males
# vice versa there is 30