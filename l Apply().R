add_one <- function(x) x+1

my_vector = c(1, 2, 3)
print(lapply(my_vector, add_one))

my_list = list(TRUE, c(1, 2, 3), 10)
print(my_list)

print(lapply(my_list, add_one))

my_df <- data.frame(a=1:3, b=4:6, c=7:9, d=10:12)
print(my_df)
 
print(lapply(my_df, add_one))
