## Summarizing with dplyr
# An important part of data analysis is summarizing data.
# Some important summary statistics include median, mean, and standard deviation.

# "Summarize": provides a way to compute summary statistics with intuitive and readable code.
library(tidyverse)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# First, we need to stratify the data (i.e., look at it by group) and then compute the summary statistics.
s <- murders %>%
  filter(region == "West") %>%
  summarize(minimum = min(rate),
            median = median(rate),
            maximum = max(rate))
s

# You can also access the components with the accessor function (i.e., $).
s$median
s$maximum

# average rate unadjusted by population size
mean(murders$rate)

# average rate adjusted by population size
us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)
us_murder_rate

## Summarizing more than one value
# "quantile()" allows us to obtain the minimum, median, and maximum values with just one line of code
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# minimum, median, and maximum murder rate for the states in the West region using quantile
# note that this returns a vector
murders %>% 
  filter(region == "West") %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))

# returning minimum, median, and maximum as a data frame
my_quantile <- function(x){
  r <-  quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3]) 
}
murders %>% 
  filter(region == "West") %>%
  summarize(my_quantile(rate))