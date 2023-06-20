# Define the input vector and labels
values <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Create the pie chart with labels and a title
pie(values, labels = labels, main = "City Pie-Chart")

# Add a legend to the chart
legend("topright", labels, cex = 0.8, fill = rainbow(length(values)))





