model <- lm(Ozone ~ Solar.R, data = airquality)
plot(Ozone ~ Solar.R, data = airquality, main = "Scatter Plot of Ozone vs Solar.R",
     xlab = "Solar.R", ylab = "Ozone")
abline(model, col = "red")