**QUIZ 1 # Data Structure**

**Question 1**

What will be the output of the below code in R Studio console?

```
> 4 == 4
```

  + a) Error
  + b) [1] 4
  + c) [1] TRUE *
  + d) No response

**Question 2**

What will be output of the below code in R Studio console panel?

```
b <- 4L
b
```

  + a) b
  + b) 4 *
  + c) 4L
  + d) 400,000

**Question 3**

What will be response of the below R code?

```
e <- Sandeep Kumar
e
```

  + a) Sandeep Kumar
  + b) "Sandeep Kumar"
  + c) 'Sandeep Kumar'
  + d) Error *

**Question 4**

Which of the following is the correct way to define a vector?

  + a) `vector(1,2,3)`
  + b) `c(1,2,3)` *
  + c) `v(1,2,3)`
  + d) `(1,2,3)`

**Question 5**

You have two vectors: 
```
vec1 <- c(1, 2,3)
vec2 <- c(4, 5,6)
```
What is the correct way to add these two vector to make (1, 2, 3, 4, 5, 6) ?

  + a) `c(vec1,vec2)` *
  + b) `c(Vec1,Vec2)`
  + c) `vec1 + vec2`
  + d) `vec1 ++ vec2`

**Question 6**

What function would you use to convert a list to a factor?

  + a) `Factor()`
  + b) `as.factor()`
  + c) `is.factor()`
  + d) `factor()` *

**Question 7**

Which of the following function would you use to create a data frame?

  + a) `data.frame()` *
  + b) `Data_Frame()`
  + c) `Data.Frame()`
  + d) `df()`


**QUIZ 2 # Exploring Data Before Visualization**

**Question 1**

Which of the following commands would you use to see the first 6 rows of the dataset mtcars?

  + a) `first(mtcars)`
  + b) `head(mtcars)` *
  + c) `str(mtcars)`
  + d) `mtcars`

**Question 2**

What will be outcome of the following command?

```class(mtcars)```

  + a) mtcars
  + b) [1] "data.frame" *
  + c) [1] Data Frame
  + d) Error

**Question 3**

The function `dim()` is used to find out the  .....

  + a) Names of the columns
  + b) Size of the dataset in terms of bytes
  + c) Number of rows and columns in the data frame *
  + d) Diameter of a circle

**Question 4**

What command for the dataset mtcars would you use to get the output shown below?

```
 'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

  + a) `dim(mtcars)`
  + b) `str(mtcars)` *
  + c) `names(mtcars)`
  + d) `head(mtcars)`

**Question 5**

What command would you use the get the below output?

```
      mpg             cyl             disp             hp             drat             wt       
 Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760   Min.   :1.513  
 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080   1st Qu.:2.581  
 Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695   Median :3.325  
 Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597   Mean   :3.217  
 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920   3rd Qu.:3.610  
 Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930   Max.   :5.424  
      qsec             vs               am              gear            carb      
 Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000   Min.   :1.000  
 1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
 Median :17.71   Median :0.0000   Median :0.0000   Median :4.000   Median :2.000  
 Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688   Mean   :2.812  
 3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
 Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000   Max.   :8.000 
```

  + a) `summary(mtcars)` *
  + b) `str(mtcars)`
  + c) `dim(mtcars)`
  + d) `name(mtcars)`

**Question 6**

Following command needs to be executed every time you ant to use the ggplot2?

```install.packages("ggplot2")```

  + a) TRUE. We need to run this command every time we want to use the ggplot2 package.
  + b) FALSE. This is a one time installation only. However we need to use the command library(ggplot2) every time we open the new session. *
