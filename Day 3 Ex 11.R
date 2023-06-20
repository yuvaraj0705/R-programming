# load the data from dataframe1
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("Test1 New", "Test1 New", "Test2 New", "Test3 New", "Test1 New", "Follow-up", "Test4 New", "Test2 New", "Test3 New", "Test1 New")
)

# 1) create an xtabs() formula that cross-tabulates "Status" and "Test"
xtabs_formula <- xtabs(~ Status + TestNewOrFollowUp, data = dataframe1)

# 2) enclose the xtabs() formula in the tigerstats function, "rowPerc()" to display row percentages for "Status" by "Test"
row_perc <- rowPerc(xtabs_formula, margin = 1)
row_perc