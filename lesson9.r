# Create a sample dataset
set.seed(123)
data <- data.frame(
  X = rnorm(100),
  Y = rnorm(100)
)
# Install and load libraries
# install.packages("ggplot2")
library(ggplot2)
# Create a scatterplot using ggplot2
ggplot(data, aes(x = X, y = Y)) +
  geom_point(color = "red") +
  labs(title = "Scatterplot using ggplot2", x = "X-axis", y = "Y-axis")

# Create a boxplot using base R
boxplot(data$X, data$Y, main = "Boxplot using Base R", col = c("blue", "green"), names = c("X", "Y"))

# Create a boxplot using ggplot2
ggplot(data, aes(x = factor(1), y = X)) +
  geom_boxplot(fill = "blue") +
  ggtitle("Boxplot using ggplot2") +
  theme_minimal() +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank())
# Sample data
data <- data.frame(Category = c("A", "B", "C"), Value = c(10, 15, 20))

# Create a bar chart
barplot(data$Value, names.arg = data$Category, col = "blue", main = "Bar Chart in Base R")

library(ggplot2)

# Create a bar chart with ggplot2
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Chart with ggplot2", x = "Category", y = "Value")

# Sample data
data <- data.frame(Values = rnorm(100))

# Create a histogram
hist(data$Values, col = "green", main = "Histogram in Base R", xlab = "Values")


library(ggplot2)

# Create a histogram with ggplot2
ggplot(data, aes(x = Values, fill = cut(Values, breaks = 30))) +
  geom_histogram(position = "identity", alpha = 0.7, color = "black") +
  labs(title = "Histogram with ggplot2", x = "Values", y = "Frequency")













