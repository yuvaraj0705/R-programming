# Define the vectors
H <- c(7, 12, 28, 3, 41)
M <- c("mar", "apr", "may", "jun", "jul")

# Create a bar chart
barplot(H, names.arg = M, main = "Revenue chart")

# Add labels to the axes
xlab("Month")
ylab("Revenue")

