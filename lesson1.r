install.packages("ggplot2")
# This is a comment 

''' this line 
next line 
This is a comment 
the next line is a comment 
the last liine
coplete '''
age <- 46 
# for assigning we use '<-'

# Variables
age <- 35
age

name <- 'Desmond'
name
is_student <- 'true'
is_student

# Data Types 
'''
1. Numeric data types _ Rep. Numbers
2. Character - Text 
3. Logical Data Types - Represents Boolean - TRUE / FALSE
4. Factor - categories
5. DataFrames - tabular data 
6. Vectors - One dimensional Array
'''

## Data Stuctures 
'''
1. Vectors
2. List - COllectiion of elements
3. Matrices - 2D arrays
4. Arrays 
5. Data Frames 

'''

# Operators in R 
# Arithmentic Opreator 
# Addition 
b <- 1 + 3
b
# Subtraction 
a <- 8 - 3
a
# Multiplication 
4 * 3

# Division 
9/3
# Vectors 
vec <- c(8, 5, 9, 6)
vec

# Accessing elements is a vector 
vec[2]
#Slicing
vec[2:4]
# Changing values in a vector
vec[3] <- 7
vec

# Logical Operators 
'''
& - and
'''
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(FALSE, TRUE, TRUE, FALSE)
result <- x & y
print(result)

# OR operator | 
result2 <- x|y
print(result2)

# Logical not - !
result3 <- !x
print(result3)

## Combination of the logical condition

## && - AND OOperator

x <- 5
result <- (x > 3) && (x < 7)
print(result)

## OR operator ||
result4 <- (x > 7) || (x < 3)
result4


