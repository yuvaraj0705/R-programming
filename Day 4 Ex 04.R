data(delivery)
model <- lm(delTime ~ n.prod + distance, data = delivery)
summary(model)
new_data <- data.frame(n.prod = 9, distance = 450)
predicted_delTime <- predict(model, newdata = new_data)
predicted_delTime

