vecor1 <- c(1,2,3,4,5)
vecor2 <- c(2,4,6,8,10)

# Calculating the pearsons correlation
correlation <- cor(vecor1, vecor2)
correlation

# using a dataframe
data <- data.frame(
  var1 = c(1,2,3,4,5),
  var2 = c(5,4,3,2,1),
  var3 = c(3,4,5,1,2)
)
data

#calculate the correlation
correl <- cor(data)
correl

# Spearman's correlation
#create a matrix for demo
matrix_data <- matrix(c(1,2,3,4,5,5,4,3,2,1, 1,4,9, 16, 25), ncol = 3)
matrix_data

# Calculate the spearman rank correlation
corrl <- cor(matrix_data, method = 'spearman')
corrl

my_matrix <- matrix(c(1,2,3,4,5,1,4,9,16,25), ncol = 2)
my_matrix

peason_corr <- cor(my_matrix)
peason_corr

spearm_cor <- cor(my_matrix, method = 'spearman')
spearm_cor

# Data Manipulation
df <- data.frame(
  Name = c('Alice', "Bob", 'Chalie', 'David', 'Emily'),
  Age = c(24, 30, 28, 22, 27),
  Score = c(97, 92, 87, 94, 83)
)
df

#Install dplyr 
install.packages("dplyr")
#Load the library
library(dplyr)

# Select function
selected_columns <- select(df, Name, Score)
selected_columns

# filter
filtered_rows <- filter(df, Age > 25)
filtered_rows

# Arrange
arranged_data <- arrange(df, desc(Score))
arranged_data

# Using the pipe operator
df

result <- df %>%
  select(Name, Age) %>%
  filter(Age > 25) %>%
  arrange(desc(Age))
result

# Aggregation
df <- data.frame(
  Group = c('A', 'B', 'A', 'B', 'A', 'B'),
  Value = c(10, 15, 20, 25, 30, 35)
)
df

# Aggregation 
agg_result <- aggregate(Value ~ Group, data = df, FUN = sum)
agg_result





