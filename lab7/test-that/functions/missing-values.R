#find the number of missing values
missing_values <- function(x) {
  sum(is.na(x))
}