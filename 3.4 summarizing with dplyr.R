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
