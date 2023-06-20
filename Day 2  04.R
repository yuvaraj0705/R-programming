get_mode <- function(data) {
  unique_values <- unique(data)
  frequencies <- tabulate(match(data, unique_values))
  mode <- unique_values[which.max(frequencies)]
  return(mode)
}

numeric_data <- c(2, 1, 2, 3, 1, 2, 3, 4, 1, 5, 5, 3, 2, 3)
mode_numeric <- get_mode(numeric_data)
print(mode_numeric)
character_data <- c("o", "it", "the", "it", "it")
mode_character <- get_mode(character_data)
print(mode_character)