bases <- c(2, 3, 4)
exponents <- c(2, 3, 4)
results <- mapply(function(base, exponent) base^exponent, base=bases, exponent=exponents)
print(results)