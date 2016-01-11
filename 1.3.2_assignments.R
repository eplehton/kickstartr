#
# Exercises
# 

#############
# 1) In the lecture notes, we are loaded SA-test data multiple times from the file, and then we 
# created the variable corres and calcualated the correct.mean for each participant together 
# with variables age_grp and sex.
#
# As you can see, I'm making the same things again and again in the beginning of the lecture notes. 
# Copy pasting is of course easy, but even better would be to insert the code required to read the 
# data and to parametrize it to a single R-script. This script could then be sourced for the analysis.
#
# Create such a script.


######################
# 2) Source the script you just created. Does it work? Good. 


##################
# 3) Take a closer look to the t-test command. Use the parameters to calculate
#
# a) Change the confidence level used to 99%
# b) Perform one-sided test.
# c) By default, R does not assume equal variance. Therefore the results says it is Welch t-test. 
#    How can you change this?

##################
# 4) Instead of t.test, try to use non-parametric alternative. Hint: ?wilcox.test


#################
# 5) Load the population data again (Population_in_Finland.csv) and divide the municipalities according to their size and
# population change (increasing, decreasing). 
#
# Hint: If you have completed the assignment, it is easy to use source to load it again. 
# Hint: Especially, if you have used good variables names which do not conflict with other
# variable names in the script.

#################
# 6) Make boxplots which describe the available variables. 

#################
# 7) Make boxplots which describe the population changes for largish (>50 000) 
# and small municipalities. 

#################
# 8) Test if the difference is statistically significant (p < .05). Which test would you use?
#






