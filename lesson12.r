# Load the neccesary Library
library(ggplot2)

#generate data
group1 <- rnorm(30, mean = 10, sd = 2)
group2 <- rnorm(30, mean = 12, sd = 2)
group3 <- rnorm(30, mean = 11, sd = 2)

# Cobine the data to one data frame
data <- data.frame(
  value = c(group1, group2, group3),
  group = rep(c("Group 1","Group 2", "Group 3"), each = 30)
)
data

# Visualize the data
ggplot(data, aes(x = group, y = value, fill = group))+
  geom_boxplot() +
  labs(title = 'Boxplot for groups', x = "Group", y = "Value")

# Perform the Anova Test

anova_results <- aov(value ~ group, data = data)

# Print the results - in a table
print(anova_results)
summary(anova_results)


# Two way Anova Test

# Generate data
set.seed(456)

# Data
treatment <- rep(c('A', 'B', 'C'), each = 40)
factor1<- rep(c('X', 'Y'), each = 60)
value <- rnorm(120, mean = 20, sd = 5)

#Combine the data
data2 <- data.frame(treatment, factor1, value)

# Visualize the data
ggplot(data2, aes(x = treatment, y = value, fill = factor1))+
  geom_boxplot() +
  labs(title = "Treatment Boxplot", x = "Treatment", y = "Value")
data2
# Analysis of Variance
# Perform a 2 way anova
anova_results2 <- aov(value ~ treatment * factor1, data = data2)
print(anova_results2)
summary(anova_results2)

'''
1. Look for the Overall Significance
if p< a - reject the null hypothesis , 
If p>a, fail to reject the null hypothesis

Step 2: Examine between-Groups and within- Groups Variation
within-groups variation - 
'''

