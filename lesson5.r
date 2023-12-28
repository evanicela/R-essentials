# If statement
x <- 10

if (x > 5) {
  print("X is greater than 5")
}

# If - else statement
y <- 3
if (y > 5){
  print("y is greater than 5")
} else {
  print("y is less than or equal to 5")
}

# If else if statement
z <- 12

if (z < 5) {
  print("z is less than 5")
} else if (z >= 5 & z <= 10) {
  print("z is between 5 and 10")
} else {
  print("z is greater than 10")
}

grades <- c( 80, 95, 75, 60, 85, 58)
passing_threshold <- 96

if (any(grades > passing_threshold)) {
  print("At least one student passed the exam")
} else {
  print("No student passed the exam")
}

# For Loops 
for (i in 1:5){
  print(i)
}

vec <- c ( 2, 4, 6, 8, 10)
for (i in vec) {
  print(i/2)
}

list1 <- list(c(2,3,4,5))
list1

for (i in list1) {
  print(i * i)
}

# While loops
x <- 1

while ( x <= 5){
  print(x)
  x <- x + 1
}

# While loop

a <- 2 # initialization 

while ( a <= 20 ) {
  print(a)
  
  a <- a +2
}


