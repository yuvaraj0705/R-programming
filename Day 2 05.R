library(dplyr)
data(mpg)
sd_city_mpg <- sd(mpg$cty, na.rm = TRUE)
sd_city_mpg
var_highway_mpg <- var(mpg$hwy, na.rm = TRUE)
var_highway_mpg