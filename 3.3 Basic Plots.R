## 3.3 Basic Plots

library(dplyr)
library(dslabs)
data("murders")

# Scatter Plots- exploratory visualizations that plot quantities against each other. See below for a simple scatterplot of total murders vs population
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

# Histograms - powerful graphical summaries of a list of numbers that gives a general overview of the types of numbers you have
murders <- mutate(murders, rate = total/population)
hist(murders$rate)
murders$state[which.max(murders$rate)]

# Boxplots - provide a more terse summary than the histogram, but are easier to stack against each other so we can see many distributions in one plot.
boxplot(rate~region, data = murders)
