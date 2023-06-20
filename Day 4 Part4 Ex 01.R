# Create a dataset
time <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
diet <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2)
weight <- c(2.1, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.1, 4.4, 4.7)
data <- data.frame(time, diet, weight)
# Create the multiple regression model
model <- lm(weight ~ time + diet, data=data)

# Predict weight for Time=10 and Diet=1
new_data <- data.frame(time=10, diet=1)
prediction <- predict(model, newdata=new_data)
cat("Predicted weight: ", prediction, "\n")

# Calculate the error in the model
actual <- 4.7
error <- actual - prediction
cat("Error: ", error, "\n")


