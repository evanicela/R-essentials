# Regression
# simple Linear regression

# Get some data
set.seed(123)
# Generate data
n <- 100 
x <- rnorm(n, mean = 5, sd = 2)
epsilon <- rnorm(n, mean = 0, sd = 2)
y = 2 * x + 3 + epsilon

data <- data.frame(x = x, y = y)
head(data)

# Explore the data
str(data)
summary(data)

# Visualize the data
# scatter
plot(data$x, data$y, main = "Scatter Plot", xlab = "Independent Variable", ylab = "Dependent variable")

# fit the simple linear regression 
model_linear_regression <- lm(y ~ x, data = data)
# display the model
summary(model_linear_regression)

# Visualize the regression line
plot(data$x, data$y, main = "Regression Line", xlab = "Independent Variable", ylab = "Dependent variable")
abline(model_linear_regression, col = "red")

# Assess models assumptions
# Redidual verses Fittet Values plot
plot(model_linear_regression, which = 1)
# Normal Q-Q plot
plot(model_linear_regression, which = 2)

# residuals vs leverage Plot
plot(model_linear_regression, which = 5)

# Make predictions
new_data <- data.frame(x = c(3, 6, 9))
new_data

predictions <- predict(model_linear_regression, newdata = new_data)
# display predictions
print(predictions)


# -----------------------------------------------------------------------------
# MULTIPLE LINEAR REGRESSION #
#-------------------------------------------------------------------------
# get the data

n <- 100
x1 <- rnorm(n, mean = 5, sd =2) # Independent Variable 1
x2 <- rnorm(n, mean = 8, sd = 3) # Independent varibale 2
epsilon <- rnorm(n, mean = 0, sd = 2) # Error term
y <- 2 * x1 + 3 * x2 + 5 + epsilon # dependent variable

# Create a data Frame
data <- data.frame(x1 = x1, x2 = x2, y = y)
head(data)

#Explore the data
str(data)
# Summary statistics
summary(data)


# fit my multiple linear regression model
model_mult <- lm(y ~ x1 + x2, data = data)
# Display the model
summary(model_mult)

# Normal Q-Q plot
plot(model_mult, which = 2)

# make a prediction for ne data 
new_data_mul <- data.frame(x1 = c(3, 6, 9), x2 = c(7, 10, 12))

# prediction
prediction_mul <- predict(model_mult, newdata = new_data_mul)

# display the prediction
print(prediction_mul)

#-------------------------------------------------------------------------------
# STEPWISE REGRESSION
#-----------------------------------------------------------------------------

# fitting the stepwise model
model_stepwise <- step(lm(y ~ 1, data = data),
                       scope = list(lower = ~ 1, upper = ~x1 + x2),
                       direction = "both")

# display sumary of the model
summary(model_stepwise)

# Visualize teh model
plot(y ~ x1 + x2, data = data, main = "Stepwise Regression Model", col = "blue")
abline(model_stepwise, col = "red")



# --------------------------------------------------------------------------
#  GENERALIZED LINEAR MODEL - LOGISTIC AND POISSION 
# ---------------------------------------------------------------------------------
# LOGISTICS REGRESSION
set.seed(123)
# Data
n <- 200
x1 <- rnorm(n, mean = 0, sd = 1)
x2 <- rnorm(n, mean = 1, sd = 1)
log_odds <- -2 + 3*x1 + 2 * x2 # log odds
probabilities <- 1/ (1 + exp(-log_odds)) # convert the log odds to probabilities
y <- rbinom(n, size = 1, prob = probabilities) # binary outcomes, (0 or 1)

# Create my dataframe
log_data <- data.frame(x1 = x1, x2 = x2, y =y)
head(log_data)






# fit my logistic regression model
log_model <- glm(y ~ x1 + x2, data = log_data, family = "binomial")

# display my logistic mode
summary(log_model)




# -----------------------------------------------
# POISSON REGRESSION
# data 
set.seed(123)
# Data
n <- 200
x1 <- rnorm(n, mean = 0, sd = 1)
x2 <- rnorm(n, mean = 1, sd = 1)
lambda <- exp(1 + 2 * x1 + 0.5 * x2) # poisson-mean parameter
y <- rpois(n, lambda) # poisson-distributed outcome
# create the data
pois_data <- data.frame(x1 = x1, x2 = x2, y=y)
head(pois_data)

# Fit the poisson regression
pois_model <- glm(y ~ x1 + x2, data = pois_data, family = "poisson")

# display the poison
summary(pois_model)
