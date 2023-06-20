# Create the dataset
chickenWeight <- data.frame(
  ChickenID = c(1, 2, 3, 4, 5),  # Unique identifier for each chicken
  Weight = c(2.3, 2.5, 2.1, 2.4, 2.2),  # Weight of the chickens in kilograms
  Diet = c("A", "B", "B", "A", "C"),  # Diet of the chickens
  Age = c(10, 12, 11, 10, 9)  # Age of the chickens in weeks
)
data(ChickWeight)
# Number of features and their types
summary(ChickWeight)

# Number of records for each feature
table(ChickWeight$weight, useNA = "ifany")
table(ChickWeight$Time, useNA = "ifany")
table(ChickWeight$Chick, useNA = "ifany")
table(ChickWeight$Diet, useNA = "ifany")
last_six <- tail(ChickWeight, 6)
ordered_df <- ChickWeight[order(ChickWeight$weight), ]
library(reshape2)
melted_df <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
cast_df <- dcast(melted_df, Diet ~ variable, mean)
