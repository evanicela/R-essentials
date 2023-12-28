# Data and introduction to Functions

# List 
# Creating lists
# Create a list with different data types

my_list <- list(name = "John", age = 25, grades = c(90, 85, 92), is_student = TRUE)
# Printing list 
print(my_list)

# accessing Elements
my_list$name
# Accessing the grades
my_list$grades

# Accessing Elements using index
my_list[2]

# List Operations
# appending elements in my list 
my_list <- c(my_list, height = 175)
print(my_list)

# Remove ELements in my list
my_list$grades <- NULL
print(my_list)

# Combining lists
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)
# Use the c() to combine list 
combined_list <- c(list1, list2)
print(combined_list)
# Nested Lists
nested_list <- list(inner_list = list(1,2,3), another_vector = c('a' ,'b', 'c'))
nested_list


## Data Frames
# Create a dataFrame
student_data <- data.frame(
  name = c('John', 'ALice', 'Bob', 'Eva'),
  age = c(22, 23, 21, 24),
  grades = c(85, 90, 78, 92)
)
student_data

# sorting of the data 
# using the order()
sorted_data <- student_data[order(student_data$grades), ]
sorted_data

# sort the data in the descending order
sorted_data_desc <- student_data[order(student_data$grades, decreasing = TRUE), ]
sorted_data_desc

# sorting by multiple columns 
# I want to sort my data , grades in descending order, age in the ascending order
sorted_data_multi <- student_data[order(-student_data$grades, student_data$age), ]
sorted_data_multi

# The dplyr package for data manipulation and cleaning of data 
# Installation 
install.packages("dplyr")
# Load the package 
library(dplyr)

# Data Manipulation 
# Filter rows
student_data
filtered_data <- filter(student_data, age > 22)
filtered_data

# selecting columns in my data 
# Use the select()
selected_data <- select(student_data, name, grades)
selected_data

# Arranging/sorting my data
# use the arrange function
sorted_data <- arrange(student_data, desc(grades))
sorted_data

# grouping the data 
student_data
grouped_data <- group_by(student_data, age)
grouped_data
