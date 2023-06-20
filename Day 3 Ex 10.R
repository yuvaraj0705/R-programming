dataframe2 <- dataframe1  # Copy the original data frame
# Create the multi-dimensional table
multi_table <- xtabs(~ Status + Gender + TestNewOrFollowUp, dataframe2)

# View the table
multi_table
