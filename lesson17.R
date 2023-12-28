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
# TIme series air passangers data

ts_airpassengers <- ts(AirPassengers, frequency = 12)

plot(ts_airpassengers)

# decompose the time series 

decompose_ts <- decompose(ts_airpassengers)

# Plot the decomposed time series data
plot(decompose_ts)

# Exponential smoothing
# holt-winters method
# fit the Holt-Winters model
holt_winters_model <- HoltWinters(ts_airpassengers)

# Plot 
plot(holt_winters_model, main = "Holt-Winters Exponential Smoothing")
