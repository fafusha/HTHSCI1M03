library(dslabs)
data("murders")

str(murders)

## C best describes the data in the data frame 

## Can see column names with the names() function

names(murders)

#> [1] "state"      "abb"        "region"     "population" "total"

a <- murders$abb

class(a)
 #> "character"

?indentical

b <- murders[, 2]

identical(a, b)
#> TRUE

## Determines the number of regions in the data set
length(levels(murders$region))

## Takes a vector and returns the frequency of each element
table(murders$region)