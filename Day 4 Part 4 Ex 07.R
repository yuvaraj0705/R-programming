# Create the dataset
chickenWeight <- data.frame(
  ChickenID = c(1, 2, 3, 4, 5),  # Unique identifier for each chicken
  Weight = c(2.3, 2.5, 2.1, 2.4, 2.2),  # Weight of the chickens in kilograms
  Diet = c("A", "B", "B", "A", "C"),  # Diet of the chickens
  Age = c(10, 12, 11, 10, 9)  # Age of the chickens in weeks
)
summary(ChickWeight)
boxplot(weight ~ Diet, data = ChickWeight, main = "Weight by Diet", xlab = "Diet", ylab = "Weight")
hist(ChickWeight$weight[ChickWeight$Diet == 1], main = "Histogram of Weight (Diet-1)", xlab = "Weight")
hist(ChickWeight$weight[ChickWeight$Diet == 4], main = "Histogram of Weight (Diet-4)", xlab = "Weight")
plot(ChickWeight$Time, ChickWeight$weight, col = ChickWeight$Diet, xlab = "Time", ylab = "Weight",
     main = "Scatter plot of Weight vs Time (Grouped by Diet)")
legend("topright", legend = levels(as.factor(ChickWeight$Diet)), col = 1:4, pch = 1)

