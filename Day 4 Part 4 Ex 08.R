# Step 1: Gather the dataset (Assuming you have a dataset named "chicken_data")

# Step 2: Preprocess the data (if required)

# Step 3: Split the data into training and testing sets
set.seed(123)  # For reproducibility
train_indices <- sample(1:nrow(chicken_data), 0.7 * nrow(chicken_data))
train_data <- chicken_data[train_indices, ]
test_data <- chicken_data[-train_indices, ]

# Step 4: Fit the multiple regression model
model <- lm(Weight ~ Time + Diet, data = train_data)

# Step 5: Assess model performance
predicted_values <- predict(model, newdata = test_data)
error <- sqrt(mean((test_data$Weight - predicted_values)^2))

# Step 6: Predict weight for Time = 10 and Diet = 1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)

# Output the results
cat("Predicted weight for Time = 10 and Diet = 1:", predicted_weight, "\n")
cat("Error in the model:", error, "\n")

