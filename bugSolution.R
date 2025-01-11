```R
# Corrected function to handle NA values
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  } else {
    return(sum(x, na.rm = TRUE) / length(x[!is.na(x)]))
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
mean_vec1 <- calculate_mean_corrected(vec1)
print(paste("Mean of vec1:", mean_vec1))

vec2 <- c()
mean_vec2 <- calculate_mean_corrected(vec2)
print(paste("Mean of vec2:", mean_vec2))

vec3 <- c(1, 2, 3, NA, 5)
mean_vec3 <- calculate_mean_corrected(vec3)
print(paste("Mean of vec3:", mean_vec3))
```