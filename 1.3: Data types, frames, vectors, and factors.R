library(dslabs)
data("murders")
class(murders)
str(murders)
head(murders)
murders$population
pop<-murders$population
class(pop)
class(murders$state)
z <- 3 == 2
class(z)
class(murders$region)
levels(murders$region)