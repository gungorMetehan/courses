# Single Continuos Variable: (dataset Chickwts)

# * 1. Histogram - hist()

# * 2. Density plot - plot()

# * 3. Box-Whisker Plot - boxplot()


# Single Discrete Variable: (dataset chickwts)

# * 4. Bar Chart - barplot()


# Two Continuous Variable : (dataset cars)

# * 5. Scatter Plot - plot()


# Two Variable: One Continuous, One Discrete (Dataset chickwts)

# * 6. Box-Whisker Plot - boxplot() - see 3 above as well

# * 7. Pie Chart - pie()

# * 8. Dot Chart - dotchart()

# * 9. Strip Chart - stripchart()


# Two Variables: Both Discrete (Dataset ggplot2::mpg)

# * 10. Mosaic Plot - mosaicplot()

# * 11 Stacked Bar Plot - barplot()

# Time series: (Dataset LakeHuron)

# * 12. Line Charts - plot()


# ---
  # Understanding a Single Continuous Numeric Variable
  
  
  ### 1. Histogram
  

str(chickwts)
head(chickwts)
hist(chickwts$weight)
hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights")
hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights", 
     breaks = 16)

# Note: Number of breaks are not same as what you want. R is the boss!

# If you want break at specific value add them as a vector
hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights", 
     breaks = c(100, 200, 300, 400, 500))

# Add labels

hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights",
     labels=T)

# Add color

hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights",
     labels = T, col = c("red", "green", "blue"))

hist(chickwts$weight, xlab="Weight", ylab= "Frequency", main="Chicken Weights",
     labels = T, col = c("seagreen2", "seashell2", "skyblue1"))

### 2. Density Plot

chden <- density(chickwts$weight)
plot(density(chickwts$weight))



### 3. Box Plot (for one continuous variable)
# Later on we will cover Box Plot for a continuous and discrete variable

boxplot(chickwts$weight)
boxplot(chickwts$weight, horizontal = TRUE)
boxplot(chickwts$weight, horizontal = TRUE, notch=TRUE)


# Understanding a Single Discrete Variable

## 4. Bar Chart

table(chickwts$feed)
plot(table(chickwts$feed))
barplot(table(chickwts$feed))



table(mtcars$cyl)
# line plot
plot(table(mtcars$cyl))

# barplot - single variable counts
barplot(table(mtcars$cyl))


# Can be used for two discrete variables using stacked bars
# will talk of this in 2 discrete variables





# Understanding a two Variable - Continuous X, Continuous Y

## 5. Scatter Plot

#Cars Dataset


plot(cars$speed, cars$dist)

plot(jitter(cars$speed), jitter(cars$dist))

plot(cars$speed, cars$dist, xlab="Speed", ylab= "Distance", 
     main="Distance to Stop")


# Plotting a line on top of the plot

#Horizontal Line at 60 / Vertical line at 15
abline(a = 60, b = 0)
abline(v = 15)

# Linear Model Line

abline(lm(cars$dist ~ cars$speed)) 

# Changing Plot Character (pch=)
#1. Circle
#2. Triangle
#3. Plus
#4. Cross
#5. Diamond, 
#6. Reverese triangle
#7. Box and crossed

plot(cars$speed, cars$dist, xlab="Speed", ylab= "Distance", 
     main="Distance to Stop", pch = 4)

# Adding additional Text on Plot or Margins

text(x=10, y=100, label="Tested on: 1 Jan 2018")

mtext(text="Universal Motors", side=3, adj= 0)





# Understanding a two Variable - One Discrete , One Continuous

# 6. Box Plot


boxplot(chickwts$weight)

boxplot(chickwts$weight ~ chickwts$feed)




## 7. Pie Chart


defects=c(9,15,42,29)
names(defects)=c("Loose cap", "Labels", "Volume", "Scratch")
pie(defects)
barplot(defects)

defects=c(9,15,42,29)
labs = c("Loose cap", "Labels", "Volume", "Scratch")
pie(x = defects, labels = labs, col = c("red", "blue", "green", "orange"))

## 8. Dot Chart


dotchart(chickwts$weight)

dotchart(chickwts$weight, labels = chickwts$feed)

dotchart(chickwts$weight, groups = chickwts$feed)



## 9. Strip Chart (collapse all dots to a single row)

stripchart(chickwts$weight ~ chickwts$feed)


## Understanding two discrete variables

## 10. Mosaic Plot

install.packages("ggplot2")
library(ggplot2)

tabdat <- table(mpg$class, mpg$cyl)
mosaicplot(tabdat, color = TRUE)


mpclass <- factor(mpg$class)
plot(mpclass)

mpcyl <- factor(mpg$cyl)
plot(mpcyl)

#11. Stacked Bar plot

cylvs <- table(mtcars$vs, mtcars$cyl)

barplot(cylvs)

barplot(cylvs, legend = rownames (cylvs))


## Time Series

## 12. Line Chart


plot(LakeHuron, type="l")



### Multiple Plots


par(mfrow=c(2,2))

hist(chickwts$weight)
plot(density(chickwts$weight))
boxplot(chickwts$weight, horizontal = TRUE)


# Lets add titles to these graphs


par(mfrow=c(2,2))

hist(chickwts$weight, main="Histogram of Chicken Weights", xlab="Weight", ylab="Frequency", xlim = c(0,500))
plot(density(chickwts$weight), main="Density Plot", xlab="Weight", ylab="Density", xlim = c(0,500))
boxplot(chickwts$weight, horizontal = TRUE, main="Box Plot", xlab="Weight", ylim = c(0,500))


