# Predict sales for a spend of $13,500
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(model, newdata = new_data)

# View the predicted sales value
predicted_sales
