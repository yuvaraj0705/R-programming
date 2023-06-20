x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_x <- mean(x)
print(paste("Mean:", mean_x))
median_x <- median(x)
print(paste("Median:", median_x))
mode_x <- names(sort(-table(x)))[1]
print(paste("Mode:", mode_x))