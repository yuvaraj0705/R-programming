# Compute summary statistics
mean_tree <- apply(trees[, 1:3], 2, mean)
min_tree <- apply(trees[, 1:3], 2, min)
max_tree <- apply(trees[, 1:3], 2, max)
sum_tree <- apply(trees[, 1:3], 2, sum)
# Create data frame A
A <- data.frame(
  Girth = c(mean_tree[1], min_tree[1], max_tree[1], sum_tree[1]),
  Height = c(mean_tree[2], min_tree[2], max_tree[2], sum_tree[2]),
  Volume = c(mean_tree[3], min_tree[3], max_tree[3], sum_tree[3]),
  row.names = c("mean_tree", "min_tree", "max_tree", "sum_tree")
)
# Print data frame A
A
