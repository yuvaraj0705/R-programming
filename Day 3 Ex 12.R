cross_tab <- xtabs(~ Status + Test, data = dataframe1)
install.packages("tigerstats")
library(tigerstats)
col_perc <- colPerc(cross_tab)