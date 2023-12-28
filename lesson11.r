# Independent samples T-Test
install.packages('ggplot2')

# Load the ggplot2
library(ggplot2)

# Get the data to use 
set.seed(123)
group1 <- rnorm(30, mean = 10, sd = 2)
group2 <- rnorm(25, mean = 12, sd = 2)
group1
group2

# Visualize the data to get sense of the distribbution of the data
boxplot(group1, group2, names = c("Group 1", "Group 2"), col = c('skyblue', "lightgreen"), main = "Boxplot for groups")

# perform a t- test 

# independent sample T-test
t_result <- t.test(group1, group2)

#print results 
print(t_result)

#------------------------------------------------------
# Paired sample t-test

# get teh data 
set.seed(456)
before <- rnorm(25, mean = 30, sd = 5)
after <- rnorm(25, mean = 3, sd = 2)
before
after

# Visualize the data

boxplot(before, after, names = c("Before", "After"), col = c('skyblue', "lightgreen"), main = "Boxplot for Befpre and After")

#Perform the t-test
# Paired sample t-test

t_result_paired <- t.test(before, after, paired = TRUE)

# Print the results
print(t_result_paired)



