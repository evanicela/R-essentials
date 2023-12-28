# Inbuilt datasets 
# Use the data()

# Using the data() function to load the mtcars dataset

# Load the dataset
data(mtcars)

# Use the mtcars dataset
head(mtcars)

# Accessing datasets from a package 
# Accessing the iris dataset directly
head(iris)

#Check the available datasets 
data()

# Loading a dataset from ggplot2
install.packages("ggplot2")

library(ggplot2)
# Accessing the diamonds dataset directly
head(diamonds)


# Bar Charts
# Simple Bar chart in Base R
# Use the mtcars
barplot(mtcars$mpg, names.arg = rownames(mtcars), col = 'skyblue',
        main = "Bar Chart of MPG in cars", xlab = "Car Models", ylab = "Miles Per Galon")
mtcars

# Customizing the bar chart

barplot(mtcars$mpg, names.arg = rownames(mtcars), col = "lightgreen", border = "black",
        main = "Customized Bar Chart", xlab = "car models", ylab = "Miles Per Galon", 
        ylim = c(0, 35), beside = TRUE, legend.text = c("MPG"), args.legend = list(title = "Legend"))
# Bar chart with ggplot2
library(ggplot2)
# Create a ggplot2 bar chart
ggplot(mtcars, aes(x = rownames(mtcars), y = mpg)) + 
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Bar chart of MPG in the cars", x = "Car Model", y = "Miles Per Galon") +
  theme(axis.text = element_text(angle = 45, hjust = 1))

# Customization of the  bar chart
ggplot(mtcars, aes(x = rownames(mtcars), y = mpg, fill = factor(gear))) +
  geom_bar(stat = "identity", position = "dodge", color = "Black") +
  labs(title = "Customized Bar Chart", x = "Car Models", y = "Miles per Galon", fill = "Number of Gears") +
  theme_minimal()+
  theme(legend.position = "top")

# Histograms 

# Creating Histograms in R Base
# Create a synthetic data for histogram
set.seed(456)
histogram_data <- rnorm(100, mean = 50, sd = 10)
histogram_data
# Plot a histogram
hist(histogram_data, col = "lightgreen", main = "histogram Example", 
     xlab = "Values", ylab = "Frequency")

# histogram wwith ggplot2
ggplot(data.frame(Values = histogram_data), aes(x = Values)) +
  geom_histogram(fill = "skyblue", bins = 20, color = "black") +
  labs( title = "Histogram with ggplot", x = "Values", y = "Frequency") +
  theme_minimal()
