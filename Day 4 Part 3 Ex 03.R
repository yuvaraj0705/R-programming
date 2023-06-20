data(airquality)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
print(paste("Mean temperature:", mean_temp))
first_five_rows <- airquality[1:5, ]
print("First five rows:")
print(first_five_rows)
all_except_temp_wind <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print("All columns except Temp and Wind:")
print(all_except_temp_wind)
coldest_day <- airquality[which.min(airquality$Temp), c("Month", "Day", "Temp")]
print(paste("Coldest day:", coldest_day$Month, "-", coldest_day$Day))
num_windy_days <- sum(airquality$Wind > 17, na.rm=TRUE)
print(paste("Number of windy days:", num_windy_days))