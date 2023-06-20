salaries <- c(50000, 60000, 55000, 65000, 70000, 75000, 45000, 48000, 52000)
departments <- factor(c("A", "B", "A", "B", "C", "C", "B", "A", "C"))
mean_salaries <- tapply(salaries, departments, mean)
print(mean_salaries)