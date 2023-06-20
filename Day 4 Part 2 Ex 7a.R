data(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight, ChickWeight$diet), ]
last_six_records <- tail(ordered_data, 6)
