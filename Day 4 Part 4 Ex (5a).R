find_range <- function(vec) {
  range <- max(vec) - min(vec)
  return(range)
}
# Test the function with the given input
C <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
find_range(C)
