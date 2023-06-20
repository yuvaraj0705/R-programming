factorial <- function(n) {
  if(n == 1) { # base case
    return(1)
  } else { # recursive case
    return(n * factorial(n-1))
  }
}
n <- 5
fact <- factorial(n)
print(paste("The factorial of", n, "is", fact))