install.packages("MASS")
library(MASS)
data(water)
plot(water$hardness, water$mortality, xlab = "Water Hardness", ylab = "Mortality")
model <- lm(mortality ~ hardness, data = water)
summary(model)
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, new_data)
predicted_mortality