mpg <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/ggplot2/mpg.csv")
 mpg[which.max(mpg$cty),]
mpg[mpg$class %in% c("compact", "subcompact") & mpg$displ == min(mpg[mpg$class %in% c("compact", "subcompact"),]$displ),]