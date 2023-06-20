# Load the "AirPassengers" dataset
data(AirPassengers)

# Create a histogram with specified bin width and starting point
hist(AirPassengers, breaks = seq(100, 700, by = 200), main = "Histogram of AirPassengers", xlab = "Number of Passengers", ylab = "Frequency")


