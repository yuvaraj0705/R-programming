# Load the Titanic dataset
data(Titanic)

# Convert the dataset to a data frame
titanic_df <- as.data.frame(Titanic)

# Bar chart to show details of “Survived” on the Titanic based on passenger Class
library(ggplot2)
ggplot(titanic_df, aes(x=Survived, fill=Class)) + 
  geom_bar(position="dodge", alpha=0.8) +
  labs(title="Survival on Titanic by Passenger Class", x="Survived", y="Count")

# Modify the above plot based on gender of people who survived
ggplot(titanic_df, aes(x=Survived, fill=Class)) + 
  geom_bar(position="dodge", alpha=0.8) +
  facet_wrap(~Sex) +
  labs(title="Survival on Titanic by Passenger Class and Gender", x="Survived", y="Count")
