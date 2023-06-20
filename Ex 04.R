N <- N[, c("Id", "Age", "score")]
values <- unlist(N)
ind <- rep(c("Id", "Age", "score"), each = nrow(N))
result <- data.frame(values, ind)
