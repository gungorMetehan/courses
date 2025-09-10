# Datasets available in r package

data()


# Lets explore mtcars dataset available in R package.

class(mtcars)


# Dimensions

dim(mtcars)


# Names

names(mtcars)


# Structure

str(mtcars)



# Head and Tail
head(mtcars)
tail(mtcars)


# Summary
summary(mtcars)


# The above data frame just had numeric data. Lets understand another dataset


head(chickwts)
str(chickwts)


head(cars)
str(cars)

# Data Frames in other packages - eg mpg or diamonds in ggplot2

install.packages("ggplot2")
library(ggplot2)
ggplot2::mpg
data(package = "ggplot2")
