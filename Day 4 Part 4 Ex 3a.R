# Load the USArrests dataset
data("USArrests")

# Create a histogram of murder arrests by state
hist(USArrests$Murder, main = "Murder Arrests by US State")

# Create a density plot of murder arrests by state
plot(density(USArrests$Murder), main = "Density Plot of Murder Arrests by US State")
# Load the ggplot2 package
library(ggplot2)

# Create a scatter plot of murder arrest rate vs. proportion urban
ggplot(USArrests, aes(x = UrbanPop, y = Murder, color = Assault)) +
  geom_point() +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Murder Arrest Rate vs. Proportion Urban",
       x = "Proportion Urban",
       y = "Murder Arrest Rate")
