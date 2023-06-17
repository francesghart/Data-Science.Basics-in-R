## In R, arithmetic operations on vectors occur "element wise"
## By "element wise" we mean that an operation is applied to each item in a vector.

murders$state[which.max(murders$population)]
max(murders$population)
murder_rate <- murders$total/murders$population*100000
murder_rate
murders$state[order(murder_rate, decreasing=TRUE)]
