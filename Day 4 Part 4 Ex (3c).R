states <- rownames(USArrests)
max_state <- states[which.max(USArrests$Murder)]
min_state <- states[which.min(USArrests$Murder)]
cat("State with max crime rate for murder:", max_state, "\n")
cat("State with min crime rate for murder:", min_state, "\n")

