# Matrix

# Creating a matrix 
mat <- matrix(1:12, nrow = 3)
print(mat)

# Slice an element 
element <- mat[2, 3]
element
# Slice a row
row_slice <- mat[2, ]
row_slice
# slice a column
col_slice <- mat[, 3]
print(col_slice)

# Slicing with Ranges
logical_subset <- mat[mat > 5]
print(logical_subset)

# slice specific rows and columns
subset_mat <- mat[c(1,3), c(2,4)]
print(subset_mat)


## Factors
# Creating factors
gender <- factor(c('Male', 'Female', 'Male', 'Female'))
print(gender)

# Levels
# Get Levels 
levels(gender)
# Set levels 
levels(gender) <- c('M', "F")
print(gender)

# Data Frames
# Creating Data Frames
df <- data.frame(
  Name = c('ALice', 'Bob', 'Chalie'),
  Age = c(25,34,22),
  City = c('Kisumu', 'Mombasa', 'Nairobi')
)

print(df)

# Accesssing the data Frame Elements
element <- df[2, 3]
element

# Accessing a column
df$Name

# Subsetting a Data Frame
# By Rows
selected_rows <- df[c(1,3), ]
selected_rows

# subset by columns
selected_col <- df[, c("Name", "City")]
selected_col
df
# Adding a Column
df$Occupation <- c('Engineer', 'Teacher', 'Artist')
df

# Remove a column
df$City <- NULL
df
