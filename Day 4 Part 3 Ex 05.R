missing_percent <- colMeans(is.na(data)) * 100
data <- data[, missing_percent < 10]
for (col in names(data)) {
  if (any(is.na(data[[col]]))) {
    data[[col]] <- ifelse(is.na(data[[col]]), mean(data[[col]], na.rm = TRUE), data[[col]])
  }
}
model <- lm(Ozone ~ Solar.R, data = data)
plot(data$Solar.R, data$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter Plot: Ozone vs Solar.R")
abline(model, col = "red")
