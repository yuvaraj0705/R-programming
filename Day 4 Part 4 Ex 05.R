# Create a random sample of 20 letters from LETTERS
set.seed(123)
letters_sample <- sample(LETTERS, 20, replace = TRUE)

# Convert the sample into a factor
letters_factor <- factor(letters_sample)

# Extract the first five levels of the factor
levels(letters_factor)[1:5]
