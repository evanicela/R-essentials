'''
Problem : Predict student performance based on various features

Goal : Develop a machine learning Model to predict student performance 
'''
# Get the data

# generate data
# Load the libraries
library(tidyverse)
library(caret)
set.seed(123)

# data
students <- tibble(
  age = rnorm(200, mean = 20, sd = 2),
  hours_studied = rnorm(200, mean = 10, sd = 2),
  attendance = rbinom(200, size = 1, prob = 0.8),
  exam_score = 0.5 * age + 1.5 * hours_studied + 3 * attendance + rnorm(200, mean = 0, sd = 5)
)
head(students)

# Explore the data and Visualize 
# Summary statistics
summary(students)

# Structure of the data
str(students)

#Pair plot for visualization
pairs(students)

# Clean the data 
# check for the missing values 
any(is.na(students))

# Encode binary variables (attendance) as factor
students$attendance <- as.factor(students$attendance)
str(students)

# Split the data into the training and testing sets
set.seed(123)
split_index <- createDataPartition(students$exam_score, p = 0.8, list = FALSE)
train_data <- students[split_index, ]
test_data <- students[-split_index, ]

# Model selection , train the model, Evaluate

# Train a linear regression model
model <- lm(exam_score ~ age + hours_studied + attendance, data = train_data)

print(model)

# make prediction on the test set of the data
predictions <- predict(model, newdata = test_data)
print(predictions)

# Evaluate the model
rmse <- sqrt(mean((test_data$exam_score - predictions)^2))
print(paste("Root Mean Squared Error: ", rmse))


# Performing parameter tuning (If Applicable)

# Interpret the results and communicate the findings

# Get the coefficients and the summary of the model
summary(model)

# Visualize the predictions vs the actual values
plot(test_data$exam_score, predictions, main = "Predictions vs Actuals", xlab = "actual Values", ylab = "Predicted Values")
abline(0, 1, col = "red")

# Deployment of the model  - if aplicable 

# silhouette
# Davies-Bouldin Index
# For Anomally detection Use Area Under the Precision-Recall curve

# ''' pr_auc <- pr.curve(predictions, test_data$taget_vaariable)$auc.integral '''

# Save the model 
saveRDS(model, "linear_model.rds")

# later on load the model
loaded_model <- readRDS("linear_model.rds")
summary(loaded_model)
residuals(model)
