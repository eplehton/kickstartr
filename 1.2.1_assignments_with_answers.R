#
# Exercises
# 

##############################
# 1) Load data the academics data from the file academics_data.R or from one of the
# text files you created during the previous assignments. 

##############################
# 2) How could we ask for the summary of all variables for females?
# 
# Hint: Learn to solve the problems by dividing it to smaller steps. 
# Solve first the problem of subsetting the females out of the data frame. 
# Then solve the problem of describing them.

##############################
# 3) Are the salaries of the females and males in this sample of academics equal?
#

##############################
# 4) Load data frame from file Population_in_Finland.csv.
#
# Hint: The file contain the title and some meta information in the beginning.
# Use parameter skip with read.table to ignore them. 
# You may also need to set header=TRUE explicitly.  

pop <- read.table("Population_in_Finland.csv", skip=5, header=TRUE, sep=',')

#############################
# 5) Divide the population data according to the population change.
#
# Before you find out the right answers to the following questions based on the data, 
# try create a hypothesis. 
#
# Are there more municipalities with increasing population than with decreasing population? 
#
# Are municipalities with increasing population larger than those with decreasing population?

############################
# 6) What is the correlation of the population change of males and females?

cor(pop$Change.during.2014.Males, pop$Change.during.2014.Females)

############################
# 7) Is there municipalities which attract more females than males and vice versa?



