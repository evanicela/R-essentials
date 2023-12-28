# import a data 
data <- read.csv("C:/Users/Admin/Desktop/Desmondonam/Denaco Analytics/Data Science in R/Week1/Assignments/sample_data_with_missing_values.csv")
data
View(data)

# Identify the missing values
# Use the is.na
is.na(data)

# Count the total missing values
sum(is.na(data))

# Deletion methods
# Listwise deletion
clean_data1 <- na.omit(data)
clean_data1

# using the complete.cases
clean_data2 <- complete.cases(data)
clean_data2

# Imputation of missing values
# Ensure you have dplyr and tidyr installed in your R
clean_data3 <- data %>%
  mutate( Age = if_else(is.na(Age), mean(Age, na.rm = TRUE), Age))
clean_data3
View(clean_data3)

# Mode
my_data <- data.frame(
  ID = 1:7,
  Age = c( 25, 30, NA, 22, NA, 30, 30)
)
calculate_mode <- function(x) {
  unique_values <- unique(x)
  frequencies <- table(x)
  mode_value <- unique_values[which.max(frequencies)]
  return(mode_value)
}
mode <- calculate_mode(my_data$Age)
mode
View(my_data)
# fill the age with the mode
my_data$Age <- ifelse(is.na(my_data$Age), calculate_mode(my_data$Age), my_data$Age)
my_data
my_data$Age


# Data Export 
data0 <- data.frame(
  Name = c('ALice', "Beryl", 'Chalene', 'Deborah'),
  Age = c( 24, 37, 26, 32),
  Score = c(85, 92, 78, 89)
)
data0

# Export the data to a CSV file
write.csv(data0, "data0.csv", sep = ',', col.names = TRUE, row.names = FALSE)

# Exporting data to excel
data0
#Install the writexl package
install.packages("writexl")
#Load the library
library(writexl)

# export the data to excel
write_xlsx(data0, "exported_data.xlsx")
