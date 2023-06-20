sum_natural <- function(n) {
  if (n == 1) {
    return(1)
  } else {
    return(n + sum_natural(n - 1))
  }
}
sum_natural(5)