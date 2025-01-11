```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  } else {
    return(sum(x) / length(x))
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
mean_vec1 <- calculate_mean(vec1)
print(paste("Mean of vec1:", mean_vec1))

vec2 <- c()
mean_vec2 <- calculate_mean(vec2)
print(paste("Mean of vec2:", mean_vec2))

#The bug is that when the vector contains NA values, it will still calculate the mean which is wrong.
vec3 <- c(1,2,3,NA,5)
mean_vec3 <- calculate_mean(vec3)
print(paste("Mean of vec3:",mean_vec3))
```