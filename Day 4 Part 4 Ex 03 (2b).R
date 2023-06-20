states <- rownames(USArrests)
median_assault <- median(USArrests$Assault)
subset(states, USArrests$Assault > median_assault)

