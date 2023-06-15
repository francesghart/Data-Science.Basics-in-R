## Sorting

library(dslabs)
data(murders)
sort(murders$total)

## The function "order" takes a vector and returns the indicies that sort the vector parameter.

x <- c(31,4,15,92,65)
x
sort(x)

index <- order(x)
x[index]

murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
murders$abb[index]

max(murders$total)
which.max(murders$total)
i_max <- which.max(murders$total)
i_max
murders$state[i_max]

min(murders$total)
which.min(murders$total)
i_min <- which.min(murders$total)
i_min
murders$state[i_min]

## Rank: any given list gives you a vector with the rank of the first entry, second entry, etc.

x <- c(31,4,15,92,65)
x
rank(x)

## Summary: "Sort" lists values from smallest to biggest. "Order" gives us the index needed to obtain the sorted data. "Rank" gives us the ranks of the original vector. 
## Table of values
## Original   sort  order   rank
##    31        4     2       3
##    4         15    3       1
##    15        31    1       2
##    92        65    5       5 
##    65        92    4       4