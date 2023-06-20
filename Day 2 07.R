# load the mpg dataset
library(dplyr)
data(mpg)

# query a: find the skewness of city miles per gallon
skew_city_mpg <- skewness(mpg$cty, na.rm = TRUE)
skew_city_mpg

# plot a histogram of city miles per gallon
library(ggplot2)
qplot(mpg$cty, geom = "histogram", binwidth = 2) +
  labs(x = "City miles per gallon", y = "Frequency")

# query b: find the kurtosis of city miles per gallon
kurt_city_mpg <- kurtosis(mpg$cty, na.rm = TRUE)
kurt_city_mpg