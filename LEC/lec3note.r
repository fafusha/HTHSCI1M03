## Lecture 3 class notes
## Data Frames

## How to create a data frame

data.frame()
as.data.frame() # converts another data structure to a data frame

## Ex 1
n <- 3
df1 <- data.frame(x1 = rnorm(n),
                  x2 = sample(c("Y", "N"), n, replace = TRUE))
str(df1)

## Ex 2

m1 < - matrix(rnorm(8), nrow = 4)
df2 <- as.data.framw(m1)
str(df2)

## How to rename columns
names(df2) <- paste("col", 1:ncol(df2), sep = "")

df2 <- cbind(df2, col11 = 1:4) # cbind() will combine objects by columns
                               # rbind() does the same for rows

df2$col22 <- as.factor(sample(c("L", "M", "H"), nrow(df2), replace = TRUE))

## bootstrap?

## head() diaplays first 6 lines of a data frame
## tail() displays last 6 lines of a data frame
## View() RStudio specific
## tibble::glimpse() from tidyverse displays every column as a row in the R console

## Lists
## Lists are vectors that conatin heterogeneous data

## create a list with the list() finction
## add an elemnt is append()

lst1 <- list(df1, m1)
str(lst1)

## append a vector to lst1

lst1 <- append(lst1, list(rnorm(10)))

## take note of 

append(list(rnorm(10)), rnorm(5))


## lenght of the lst1
nl <- length(lst1)
## name elemtns of lst1
names(lst1) <- paste("elem", 1:nl, sep="_")

## Sub-setting/ Indexing

n <- 5
vl <- logical(n)
vl[3:5] <- c(TRUE, TRUE, TRUE)

vn <- seq(1, n)[vl]

## list_name[1]: sxtracks the item as a lsit
## lsit name[[1]]: extracts the first item as its original.simplifies dat structurw

el1 <- lst[1]

el2 <- lst1[[1]]

str(el2)


lst1[[1]][1:2,]$x1

## Indicating Absence
## When a value is missing it is denoted as NA
## When a data structure is missing it is denoted as NULL

#To test fro NA values ue the is.na() function

v_na <- c(1,5,NA,8,NA,10)
## are any entries in v_na NA?
any(is.na(v_na))

## which entries in v_na are NA

which(is.na(v_na))

mean(v_na)

mean(v_na, n.rm = TRUE)

## na.rm when set to TRUE it excludes NA values from a calculation
## na.action the name of the fucntion indicating what happens to NA values
##     na.exclude()
##     na.pass()

## Creates a logical vector
v_g5 <- 3:7 >= 5

## total values >= 5
sum(v_g5)

## percentage of values >= 5
mean(v_g5)