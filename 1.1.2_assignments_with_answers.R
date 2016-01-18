#
# Exercises
# 

##############################
# 1) Load data from file titanic_colnames.txt to a data frame. Hint: Use function read.table

titanic <- read.table("titanic_colnames.txt", sep=':')

#############################
# 2) Load data from file titanic_nocolnames.txt to another data frame.

titanic2 <- read.table("titanic_nocolnames.txt", sep=';')

# Do you see any difference between the two data frames?
# - Variable/column names missing in the second
# - Row names included as a variable: the file had row names written
#   which is default option for R's write.table. 

#############################
# 3) The second data frame does not have meaningful columns names, because they were 
# missing from the file. For the sake of an exercise, please set the column names 
# but try to avoid writing the columns names by hand. Instead, try to copy the values from the
# first data frame. 

# Hint! Use function names to investigate the data frames. Pay attention to the details. 

names(titanic2)[2:6] <- names(titanic)
# then we can get rid of the first unnecessary variable for example using
titanic2[1] <- NULL

# Ok, this was a bit tricky at this point.


#############################
# 4) Investigate the variables in another of the data frames. 
#
# Which variables are factors and which are not?
# 
# Is there a function to check this? Hint: ?factor
#
# Is some of the factors ordered? Can you change some of them to ordered?

is.factor(titanic$Class)
is.factor(titanic$Sex)
is.factor(titanic$Age)
is.factor(titanic$Survived)
is.factor(titanic$Freq)


is.ordered(titanic$Class) 
# etc

# change it to ordered: create ordered and assing it to the data frame
titanic$Class <- ordered(titanic$Class)



###############################
# 5) Load the academics data from academics_data.R. This is slightly modified 
# version of the data displayed during the lecture. 
# Hint: ?source 

source('academics_data.R')
# this is pretty much the same as you would copy paste all the code from 
# academics_data.R and run it here

###############################
# 6) Write academics data to three text files using different settings.   
#
# a) Using empty space as a separator
# b) Using comma (,) as a separator
# c) Without column names

write.table(academics, "academics.txt")
write.table(academics, "academics_b.txt", sep=",")
write.table(academics, "academics_c.txt", col.names=F)

###############################
# 7) Read academics data back from the text files you just created in exercise 6. 

read.table("academics.txt")
read.table("academics_b.txt", sep=",")
read.table("academics_c.txt")

####################################
# 8) In the assignments 1.1.1. you created coffee data frame. Recreate the data frame and write it 
# to a text file. This will be used later. 

write.table(coffee, "coffee.txt")


