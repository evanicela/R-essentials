install.packages("ggplot2")
install.packages("forecast")

# Load libraries
library(ggplot2)
library(forecast)
library(tibble)

# Set a seed
set.seed(123)

# generate data
data <- tibble(
  Date = seq(as.Date("2022-02-02"), by = "months", length.out = 20),
  Value = rnorm(20, mean = 50, sd = 5)          
)
head(data)

# Line plot
plot(data$Date, data$Value, type = 'l', col = "blue", lwd = 2, main = "time Series line ", xlab = "Date", ylab = "Values")

# Scatter plot
plot(data$Date, data$Value, col = "red", pch = 16, main = "time series scatter plot", xlab = "Date", ylab = "values")


# Bar plots
barplot(data$Value, names.arg = data$Date, col = "green", main = "TIme Series Barplot", xlab = "Date", ylab = "values")

data(AirPassengers)

AirPassengers
# TIme series air passangers data

class(AirPassengers)
# Exploration of the data


# To check the start and end
start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)
# Summary Statistics
summary(AirPassengers)

# Plot the data
plot(AirPassengers, ylab = "Passengers ")




ts_airpassengers <- ts(AirPassengers, frequency = 12)

plot(ts_airpassengers)

# Decomposition 
decomposed_data <- decompose(AirPassengers)

# Plot of the decomposed ts data
plot(decomposed_data)

# decompose the time series 

decompose_ts <- decompose(ts_airpassengers)

# Plot the decomposed time series data
plot(decompose_ts)


#-------------------------------------------------------------------------
# Exponential smoothing
#-----------------------------------------------------------------------
# holt-winters method
# fit the Holt-Winters model
holt_winters_model <- HoltWinters(AirPassengers)

# Plot 
plot(holt_winters_model, main = "Holt-Winters Exponential Smoothing")
# Loading In Built datasets
data(mtcars)
data(AirPassengers)

# Checking for stationarity using ADF test
adf_test_result <- adf.test(AirPassengers)
print(adf_test_result)

# Achieving stationarity
# 1. Differencing
differenced_series <- diff(AirPassengers)
plot(differenced_series)

# 2. Tranformation
# e.g log function for transformation
log_transformed_seres <- log(AirPassengers)
plot(log_transformed_seres)

# 3. Seasonal Adjustment
# Example
seasonal_differenced_series <- diff(AirPassengers, lag = "seasonal_period")

# Autocorrelation (ACF)

# compute and plot the autocorrelation
acf(AirPassengers, main = "Autocorrelation function")

# Ljung-Box test
Box.test(AirPassengers, lag = 1, type = "Ljung-Box")

# ------------------------- Autoregressive Models ---------------------------
# fit the AR model AR(2)
ar2_model <- arima(AirPassengers, order = c(2,0,0))

# summary of the fitted model
summary(ar2_model)

# -----------------------   Moving Average (MA) ------------------------------
# fit an MA
ma1_model <- arima(AirPassengers, order = c(0,0,1))

# Summary of the fitted model
summary(ma1_model)


#-------------------------------------------------------------------------
#                 Box - Jenkins 
# -----------------------------------------------------------------------

# Libraries 
library(tseries)
library(forecast)

# get the data
data(AirPassengers)

# 1. Identification

acf(AirPassengers, lag.max =20)
pacf(AirPassengers, lag.max = 20)


# Step 2. Estimation
# fit an arima model
arima_model <- arima(AirPassengers, order = c(1, 1, 1))
summary(arima_model)


# step 3. Diagnostic
# Residual Analysis
residuals<- residuals(arima_model)
plot(residuals)
acf(residuals, lag.max = 20)
pacf(residuals, lag.max = 20)

# step4. 
# forecast the future valeus
forecast_values <- forecast(arima_model, h = 10)
plot(forecast_values)
