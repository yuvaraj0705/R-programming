install.packages("tidyverse")
library(tidyverse)
chickens <- read.csv("path/to/dataset.csv")
head(chickens)
summary(chickens)
model <- lm(Weight ~ Time + Diet, data = chickens)
summary(model)
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
predicted_weight
actual_weight <- 5.2  # Replace with the actual weight of the chicken

error <- actual_weight - predicted_weight
error
