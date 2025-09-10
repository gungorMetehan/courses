######################
# Data Types
#####################
# 1. Logical
# 2. Integer
# 3. Numeric
# 4. Complex
# 5. Character

#1. Logical (TRUE and FALSE)
# 4 == 4 returns TRUE

#2. Numeric 
a <- 4
a
class (a)

c <- 3.5
c
class (c)

#3. Integer
b <- 4L
b
class (b)

# 4. Complex (Not covered)

# 5. Character

e <- 'Sandeep Kumar'
e
class(e)

# Summary: Five Common Data Types
# Logical (e.g., TRUE, FALSE)
# integer (e.g,, 2L, as.integer(3))
# numeric (real or decimal) (e.g, 2, 2.0, pi)
# complex (e.g, 1 + 0i, 1 + 4i)
# character (e.g. "Sandeep Kumar", 'Paul')

#####################
# Data Structures
# Vector, Factor, List, Matrix, Data Frame
#####################
  
### 1. Vectors

#  Create a vector using c() command.


num.a <- c(1,2,4,6,7)
num.a
class(num.a)

#  Check the class of vector num.a. It is numeric so is.numeric will return TRUE, and is.logical will return FALSE

is.numeric(num.a)

num.b <- c("Paul", "John", "Sandeep", "Ali")
num.b
class(num.b)
is.character(num.b)

num.c <- c(TRUE, F, FALSE, T)
num.c
class(num.c)
is.logical(num.c)




###  2. Factors
# categories

airports <- c('DEL', 'CAL', 'NYC', 'CAL', 'DEL', 'DEL')
summary(airports)
barplot(summary(airports))


#  Factor changes the characters to categories

#  Change items in the vector to factors


airports <- c('DEL', 'CAL', 'NYC', 'CAL', 'DEL', 'DEL')
airports.fact <- factor(airports)
summary(airports.fact)
barplot(summary(airports.fact))


###  3. List

#  Lists are used to place number of items in a bundle.


a <- c(1,4,6)
b <- c('Red', 'Green')
c <- "Welcome"

my.list <- list(a,b,c)


###  4. Matrix

#  Matrix has two dimensional data of similar type


stu.hours <- c(20,24,46,62,22,37,45,27,65,23)
stu.marks <- c(40,55,69,83,27,44,61,33,71,37)

# Matrix function using just stu.hours
stu.matrix <- matrix(stu.hours)
stu.matrix


#  Join two columns (stu.hours,stu.marks) as stu.data

stu.data <- c(stu.hours,stu.marks)
stu.matrix <- matrix(stu.data)
stu.matrix


#  Above provide 20 values in a single column instead of two separate columns.

#  Add the argument nrows to create 10 rows


stu.matrix <- matrix(stu.data, nrow = 10)
stu.matrix


###  5. Data Frame

#  Here you can have mix of data types, unlike matrix.

#  Create 4 vectors which will form 4 columns of the data frame.


stu.name <- c('Mr1', 'Ms2', 'Ms3', 'Mr4', 'Ms5', 'Ms6', 'Mr7', 'Ms8', 'Mr9', 'Mr10')
stu.hours <- c(20,24,46,62,22,37,45,27,65,23)
stu.marks <- c(40,55,69,83,27,44,61,33,71,37)
stu.male <- c(T,F,F,T,F,F,T,F,T,T)


#  Combine these four vectors as a data frame


stu.data <- data.frame(stu.name, stu.hours, stu.marks, stu.male)
stu.data
