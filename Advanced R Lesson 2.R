# Install the rpart package
install.packages('rpart')

# load the library
library(rpart)

# have the data 
# generate some data
# Set a seed
set.seed(123)

data <- data.frame(
  Age = rnorm(100, mean = 30, sd = 5),
  Income = rnorm(100, mean = 50000, sd = 10000),
  Education = sample(c("High School", "College", "Graduate"), 100, replace = TRUE), 
  Target = sample(c("Class A", "Class B"), 100, replace = TRUE),
  Gender = sample(c("Male", "Female"), 100, replace = TRUE),
  Location = sample(c("Urban", "Rural", "Surbab"), 100, replace = TRUE),
  onlineActivity = runif(100, min = 0, max = 1)
)
head(data)

# Explore the data 
summary(data)

sum(is.na(data))


# Build the model
tree_model <- rpart(Target ~ Age + Income + Education, data = data, method = "class")

# Visualize the model
plot(tree_model)
text(tree_model)

# Making predictions
new_data <- data.frame(Age = 25, Income = 45000, Education = "High School")
new_data

# prediction
prediction <- predict(tree_model, new_data, type = "class")
print(prediction)

# You can make the visualizations more interpretable with the `rpart.plot`


#--------------------------------------------------------------------
#   RANDOM FOREST
#------------------------------------------------------------------------


head(data)

# install the randomForest package
install.packages("randomForest")
# Load the library
library(randomForest)

# Build a random forest model
head(data)
features <- c('Age', "Income", "Education", "Gender", "Location", "onlineActivity")

rf_model <- randomForest(Target ~ ., data = data[, c(features, "Target")], ntree = 100, mtry = sqrt(length(features)))


# rf_model <- randomForest(Target ~ Age + Income + Education + Gender + Location + onlineActivity, data = data, ntree = 100, mtry = 2)

# Print the model# 
print(rf_model)

# Mtcars 
data(mtcars)
head(mtcars)

rf_model2 <- randomForest(factor(am) ~ ., data = mtcars, ntree = 100, mtry = sqrt(ncol(mtcars) - 1))
print(rf_model2)

# visualise variable importance
varImpPlot(rf_model2)

# Give a prediction
prediction <- predict(rf_model2, new_data = mtcars)

# Confusion matrix
install.packages("caret")
library(caret)

# Create a confusion matrix
conf_matr <- confusionMatrix(prediction, factor(mtcars$am))
print(conf_matr)




