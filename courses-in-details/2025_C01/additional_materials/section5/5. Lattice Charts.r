### The lattice package - by Deepayan Sarkar
###    - better defaults 
###    - ability to display multivariate relationships. 

### Trellis graphs - graphs that display a variable or the relationship 
# between variables, conditioned on one or more other variables.

### install Lattice Package


install.packages("lattice")
library(lattice)


# 1. Histogram - hist() || Lattice equivalent histogram()

# 2. Density plot - plot() || Lattice equivalent densityplot()

# 3. Box-Whisker Plot - boxplot() || Lattice equivalent bwplot() and 
# the same for violin plot

# 4. Bar Chart - barplot() || Lattice equivalent barchart()

# 5. Scatter Plot - plot() || Lattice equivalent xyplot() 
# and splom() scatter plot matrix | cloud() for 3D Plot

# 6. Dot Chart - dotchart() || Lattice equivalent dotplot()

# 7. Strip Chart - stripchart() || Lattice equivalent stripplot()


# ----------------------------------------------

# 1. Histogram - hist() || Lattice equivalent histogram()

# First example
hist(chickwts$weight)
boxplot(chickwts$weight ~ chickwts$feed)
dotchart(chickwts$weight, groups = chickwts$feed)
stripchart(chickwts$weight ~ chickwts$feed)

# lattice
histogram(~weight, data=chickwts)
histogram(~weight | feed, data=chickwts)



# Second Example
#Base command
hist(mtcars$mpg)

# Lattice command
histogram(~mpg, data = mtcars)
histogram(~mpg | factor(cyl), data = mtcars)
histogram(~mpg | factor(am), data = mtcars)

# if the factor is a continuous variable
histogram(~mpg | factor(wt), data = mtcars)

# Lets split hp into three ranges

wt.split <- equal.count(mtcars$wt, 3)
wt.split
histogram(~mpg | wt.split, data = mtcars)
histogram(~mpg | wt.split, data = mtcars, layout = c(1,3))
histogram(~mpg | wt.split, data = mtcars, layout = c(1,3), as.table=TRUE)

histogram(~mpg | wt.split + factor(am), data = mtcars)

# 0 = automatic, 1 = manual
histogram(~mpg | factor(am) + wt.split , data = mtcars, layout = c(1,6))

# ------------------------------

# 2. Density plot - plot() || Lattice equivalent densityplot()

# Base package commands
chden <- density(chickwts$weight)
plot(density(chickwts$weight))

#  Lattice

densityplot(~weight, data=chickwts)
densityplot(~weight, data=chickwts, plot.points = FALSE)

densityplot(~weight | feed, data=chickwts)

# mtcars
densityplot(~mpg | factor(cyl), data = mtcars)
densityplot(~mpg | factor(cyl), data = mtcars, layout = c(1,3))
densityplot(~mpg | factor(cyl), data = mtcars, groups = factor(am), 
            layout = c(1,3))
# change color
densityplot(~mpg | factor(cyl), data = mtcars, groups = factor(am), 
            layout = c(1,3), col= c("red", "green"))


# ----------------------------

#3. Box-Whisker Plot - boxplot() || Lattice equivalent bwplot()

boxplot(chickwts$weight)
boxplot(chickwts$weight ~ chickwts$feed)

bwplot(weight~feed, data = chickwts)

bwplot(~weight | factor(feed), data = chickwts)



bwplot(~weight | factor(feed), data = chickwts, notch = TRUE)
bwplot(~weight | factor(feed), data = chickwts, layout = c(2,3))
bwplot(~weight | factor(feed), data = chickwts, layout = c(1,6))

# Layout c(column, rows, pages)
bwplot(~weight | factor(feed), data = chickwts, layout = c(1,3,2))

# Violine Plot

bwplot(weight~feed, data = chickwts)

bwplot(weight~feed, data = chickwts, 
       panel = panel.violin)


# ----------------------------

# 4. Bar Chart - barplot() || Lattice equivalent barchart()

# Base Command

table(chickwts$feed)
barplot(table(chickwts$feed))

# Lattice
btab <- table(chickwts$feed)
barchart(~btab, data=chickwts)

# Second example

barchart(rownames(mtcars) ~ mpg, data=mtcars)

barchart(rownames(mtcars) ~ mpg | factor(gear), data=mtcars)
# 0 = automatic, 1 = manual
barchart(rownames(mtcars) ~ mpg | factor(gear) + factor (am), data=mtcars)

# ----------------------------

# 5. Scatter Plot - plot() || Lattice equivalent xyplot(), 
# splom() scatter matrix plot, cloud() 3D Plot
 
xyplot(mpg ~ wt, data = mtcars)

xyplot(mpg ~ wt, data = mtcars, grid=TRUE)

xyplot(mpg ~ wt, data = mtcars, grid=TRUE, type = c("p", "r"))
# Types - p = point, r = linear regression, smooth = smooth regression

xyplot(mpg ~ wt, data = mtcars, grid=TRUE, type = c("p", "smooth"))

xyplot(mpg ~ wt | factor(gear), data = mtcars, grid=TRUE, type = c("p", "smooth"))

xyplot(mpg ~ wt | factor(gear), data = mtcars, grid=TRUE, 
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3)

# Changing Plot Character (pch=)
#1. Circle
#2. Triangle
#3. Plus
#4. Cross
#5. Diamond, 
#6. Reverese triangle
#7. Box and crossed

xyplot(mpg ~ wt | factor(gear), data = mtcars, grid=TRUE, 
       type = c("p", "smooth"), col.line = "darkorange", lwd = 3, pch=2)

# group by am
xyplot(mpg ~ wt | factor(gear), data = mtcars, type = c("p", "smooth"), 
       group = factor(am), lwd = 3,auto.key = TRUE)



# Scatter Plot Matrix - splom()


splom(chickwts)

splom(mtcars)

str(mtcars)
splom(mtcars[c(1,2,3,4,6)], type = c("p", "smooth"))

# 3D Plot - cloud() z ~ x * y

head(mtcars)
cloud(mpg ~ disp * wt, data = mtcars)

cloud(mpg ~ disp * wt, data = mtcars, group = factor(cyl), auto.key = TRUE)



# ---------------------------------

# 6 and 7. Dot and Strip Plot -  dotplot() , stripplot()

# Base command

dotchart(chickwts$weight, groups = chickwts$feed)

# Lattice

dotplot(feed~weight, data= chickwts)

dotplot(~weight | feed, data= chickwts)


stripplot(feed~weight, data= chickwts)


