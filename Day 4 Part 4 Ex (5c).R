count_vowels <- function(str) {
  # Convert the string to lowercase
  str <- tolower(str)
  # Split the string into individual characters
  chars <- strsplit(str, "")[[1]]
  # Count the number of vowels
  num_vowels <- sum(chars %in% c("a", "e", "i", "o", "u"))
  return(num_vowels)
}
# Test the function with the given input
c <- "matrix"
count_vowels(c)
