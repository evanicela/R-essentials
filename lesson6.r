# Function apply(), lapply(), sapply(), tapply()

# apply() function 

'''
Basic syntax 


apply(X, MARGIN, FUN, ....)
MARGIN - given as 1 - for rows, 2 - for columns
'''

# Example 
mat <- matrix(1:6, ncol = 2)
mat
result <- apply(mat, 2, sum)
result


# lappy()

'''
the syntax 
lapply(X, FUN, ...)
'''

my_list <- list(a = c(1,2,3), b = c(4,5,6), c = c(7,8,9))
my_list

# square each element in the list
result_list <- lapply(my_list, function(x) x^2)
print(result_list)

# sapply()

'''
basic syntax 
sapply(X, FUN, ..., simplify = TRUE)
'''
# Example
# Extract a mean of each column in a dataframe
data_frame <- data.frame(A = rnorm(100), B = rnorm(100), C = rnorm(100))
data_frame

a <- list(data_frame$A)
result_sapply <- sapply(a, function(x) mean(x))
print(result_sapply)

# tapply() function
'''
basic syntax

tapply(X, INDEX, FUN....)
'''

values <- c(10, 20, 30, 15, 25, 35,20, 30, 15)
groups <- factor(c('A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C'))
result_tapply <- tapply(values, groups, mean)
print(result_tapply)

# How to import data 
# importing a csv data
# Install and load the readr package
# installing
install.packages("readr")
# Load the package
library(readr)
# read a csv data
data <- read.csv("C:/Users/Admin/Desktop/Desmondonam/Denaco Analytics/Data Science in R/Week2/Scripts/data.csv")
data

# Reading excel data
# install the readxl package
install.packages("readxl")
# load the package
library(readxl)

data_excel <- read_excel("C:/Users/Admin/Desktop/Desmondonam/Denaco Analytics/Data Science in R/Week2/Scripts/file_example_XLS_10.xls")

data_excel

# Importing spss data
# install the haven package
install.packages("haven")
# Load the haven package
library(haven)
data_spss <- read_sav("C:/Users/Admin/Desktop/Desmondonam/Denaco Analytics/Data Science in R/Week2/Scripts/HLTH1025_2016.sav")

install.packages("foreign")
library(foreign)
data_spss <- read.spss("C:/Users/Admin/Desktop/Desmondonam/Denaco Analytics/Data Science in R/Week2/Scripts/HLTH1025_2016.sav", to.data.frame = TRUE)
data_spss
