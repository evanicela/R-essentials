# Merging dataframes

# Using the merge() function 
# Ccreate 2 dataframes
df1 <- data.frame(ID = c( 1,2,3), Name = c('John', 'Alice', 'Bob'))
df2 <- data.frame(ID = c(2,3,4), Score = c(90, 85, 88))
df1
df2
# Merge the data based on the column that is common - ID
merger_df <- merge(df1, df2, by = "ID", all = TRUE)
merger_df

# Using the dplyr package for merging
install.packages("dplyr")
#Load the package
library(dplyr)
df1
df2
#Left Join
left_join_df <- left_join(df1, df2, by = "ID")
left_join_df
# Right Merge
right_merged_df <- right_join(df1, df2, by = "ID")
right_merged_df
# Inner Merge
inner_merge <- inner_join(df1, df2, by = 'ID')
inner_merge

# Fulll Join
full_merged_df <- full_join(df1, df2, by = "ID")
full_merged_df


## Functions 
# Creating a function
my_function <- function() {
  # function body
  # code to be executed
  
  
}

add_numbers <- function(a, b) {
  addition <- a + b
  return(addition)
}

# Calling a function

result <- add_numbers(5,7)
print(result)

result4 <- add_numbers(45, 37)
print(result4)

result5 <- add_numbers(6)

# Deafault Values , Missing Arguments
# giving a default values in my arguement

multiply_numbers <- function(x, y = 3) {
  result <- x * y
  return(result)
}

# Call the function without passing the second argument
result <- multiply_numbers(5)
print(result)

result6 <- multiply_numbers(7,9)
result6

# Variable Scope 
# Global Variable 
global_variable <- 10

# Function that will use the global and the local varible 
my_function <- function(){
  local_variable <- 5
  result8 <- global_variable + local_variable
  return(result8)
}


# Call the function 
result <- my_function()
result



