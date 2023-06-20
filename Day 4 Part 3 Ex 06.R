data(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight), ]

tail(ordered_data, 6)
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
cast(melted_data, Diet ~ variable, mean, value.var = "value")
cast(melted_data, Diet ~ variable, mode, value.var = "value")