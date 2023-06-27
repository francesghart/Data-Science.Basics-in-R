## Indexing: the process of subsetting a vector by the properties of another vector.
murder_rate <- murders$total/murders$population*100000

## Using logical operators to index vectors
## If we compare a vector to a single number, it actually performs the test for each entry.
index <- murder_rate < 0.71
index <- murder_rate <= 0.71
index
murders$state[index]
sum(index)

## We can use logical operators in R to create conditions.
## Operator Description
##    <       less than
##    <=      less than or equal to
##    >       greater than
##    ==      exactly equal to
##    !=      not equal to
##    !       NOT
##    |       OR
##    &       AND

TRUE & TRUE
TRUE & FALSE
FALSE & FALSE

## Use "&" to get a vector of logicals and find out which states satisfy our two conditions (i.e., West and with a murder rate less than or equal to 1)
west <- murders$region == "West"
safe <- murder_rate <= 1
index <- safe & west
murders$state[index]
