# Remove the variables Sex and Code
N <- N[, c("Age", "score")]
# Create a data frame with the desired structure
values <- c(N$Age, N$score)
ind <- c(rep("Id", length(N$Age)), rep("score", length(N$score)))
new_df <- data.frame(values, ind)
