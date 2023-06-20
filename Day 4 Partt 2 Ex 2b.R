second_highest <- sort(unique(x), decreasing=TRUE)[2]
print(paste("2nd highest value:", second_highest))
third_lowest <- sort(unique(x))[3]
print(paste("3rd lowest value:", third_lowest))