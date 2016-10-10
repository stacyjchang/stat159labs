#find the range of a numeric vector
range_value <- function(x, na.rm = FALSE) {
  max(x, na.rm = na.rm) - min(x, na.rm = na.rm)
}