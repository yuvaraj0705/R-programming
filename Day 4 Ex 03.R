data(mtcars)
model <- lm(mpg ~ disp + hp + wt, data = mtcars)
summary(model)
new_data <- data.frame(disp = 221, hp = 102, wt = 2.91)
predicted_mpg <- predict(model, newdata = new_data)
predicted_mpg