df1 <- data.frame(Id = 1:4, Age = c(14, 12, 15, 10))
df2 <- data.frame(Id = 1:4, Sex = c("F", "M", "M", "F"), Code = c("a", "b", "c", "d"))

M <- merge(df1, df2, by = "Id")

df3 <- data.frame(id2 = c(4, 3, 2, 1), score = c(100, 98, 94, 99))

N <- merge(M, df3, by.x = "Id", by.y = "id2")
