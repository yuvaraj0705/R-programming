library(plotrix)
Political_Knowledge <- c("Low", "Medium", "High")
Values <- c(10, 20, 70)
Colors <- c("#F8766D", "#00BFC4", "#619CFF")
pie3D(Values, labels = Political_Knowledge, explode = 0.1, col = Colors, 
      main = "Political Knowledge", radius = 1, theta = 1, 
      explodeIndex = 3, labelcex = 0.8, 
      labelcol = "black", clockwise = FALSE, 
      density = NULL, border = "black")
legend("topright", Political_Knowledge, cex = 0.8, fill = Colors)
