## Solve x^2 + 2*x - 3 = 0

a <- 1
b <- 2
c <- -3

x1 <- (-b + sqrt(b^2 - 4*a*c)) / (2*a)
x2 <- (-b - sqrt(b^2 - 4*a*c)) / (2*a)


log(a)

## How to get help
help("log")
?log
args(log)


## Shows all avaliable datasets
data()

## Constants Examples
pi
inf 


## Deterrmines what type of object we have
class(a)

## Dataframe is a way to store data sets in R
library(dslabs)

# Loading the required dataset
data(murders)


## Shows the structure of the object (i.e. examine it)
str(murders)

## Shows first six lines of a datafame 
head(murders)

## The acessor: $

murdes$populatoin

## Reveal names of the variables stored in the table

names(murders)

## Vectors 
pop <- murders$population

## Numbers of items in a vector
length(pop)

## Logical comparission
z <- 3 == 2
?Comparison

#Factors  

class(murders$region)
#> [1] "factor"

# Factors are used to store categorical data.
levels(murders$region)

# Levels are labels to a map that R stores in order to save memory
# By default they appear in alphabetical order

region <- murders$region 
value <- murders$total

# Rearrangers levels by sum 
region <- reorder(region, value, FUN = sum)

## Matricies
## How to define a matrix

mat <- matrix(1:12, 4, 3)

## Acessing a specific enty in a matrix

mat[2, 3]

## Acessing an entire row

mat[2, ]

## Acessing an entire column

mat [, 3]

## Acessing more than one column in a single time with : operator
## Simillar applies for rows

mat [, 2:3]

## Conveting matricies into Dataframes 

df <- as.data.frame(mat)

## Can also use [] brackets to acess rows/columns of a dataframe
## just like matricies

murders[25,1]
murders[4:7, ]