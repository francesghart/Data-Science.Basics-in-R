# Basic Data Wrangling

# "dplyr" is a package which provides intuitive functionality for working with tables.  
install.packages("dplyr")
library(dplyr)

# add a column to your data table using "mutate"
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total/population*100000)

# to filter the data by subsetting rows, use "filter"
filter(murders, rate <= 0.71)

# to subset the data by selecting specific columns, use "select"
new_table <- select(murders, state, region, rate)

# the "pipe operator" (%>%) allows us to perform a series of operations by sending the results of one function to another function.
murders <- mutate(murders, rate=total/population*100000)

head(murders)

filter(murders,rate<= 0.71)

new_table <-select(murders,state,region,rate)

murders %>% select(state,region,rate) %>% filter(rate<=.071)
