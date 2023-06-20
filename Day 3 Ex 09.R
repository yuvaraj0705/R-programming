dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("Test1 New", "Test1 New", "Test2 New", "Test3 New", "Test1 New", "Follow-up", "Test4 New", "Test2 New", "Test3 New", "Test1 New")
)
gender_status <- table(dataframe1$Gender, dataframe1$Status)
print(gender_status)
reference_status <- xtabs(~ Reference + Status, data = dataframe1)
print(reference_status)
dataframe2 <- reference_status