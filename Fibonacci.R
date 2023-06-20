fibonacci <- function(n) {
  if(n <= 1) { # base case
    return(n)
  } else { # recursive case
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}
limit <- 10
fibonacci_seq <- numeric(limit)
for(i in 1:limit) {
  fibonacci_seq[i] <- fibonacci(i-1)
}
print(fibonacci_seq)