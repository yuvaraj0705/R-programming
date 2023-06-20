# Load airquality dataset
data(airquality)

# Find missing values
na_count <- colMeans(is.na(airquality)) * 100
na_count

# Replace missing values with mean of the feature if less than 10%
for (col in names(airquality)) {
  if (na_count[col] < 10) {
    airquality[is.na(airquality[, col]), col] <- mean(airquality[, col], na.rm = TRUE)
  }
}