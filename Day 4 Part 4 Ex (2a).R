# Load the Titanic dataset
data(Titanic)
# Convert the dataset to a data frame
titanic_df <- as.data.frame(Titanic)
# Bar chart to show details of “Survived” on the Titanic based on passenger Class
library(ggplot2)
ggplot(titanic_df, aes(x=Survived, fill=Class)) + 
  geom_bar(position="dodge", alpha=0.8) +
  labs(title="Survival on Titanic by Passenger Class", x="Survived", y="Count")
