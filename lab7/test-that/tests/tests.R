# load the source code of the functions to be tested

source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)

  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)

  expect_equal(range_value(y), NA_real_)
  expect_length(range_value(y), 1)
})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)

  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})

test_that("range works as expected", {
  w <- letters[1:5]

  expect_error(range_value(w))
})

test_that("range works as expected", {
  a <- c(1, 2, 3, 4, NA, NA)
  
  expect_equal(range_value(a, TRUE), 3)
  expect_length(range_value(a, TRUE), 1)
  expect_type(range_value(a, TRUE), "double")
})

# load the source code of the functions to be tested
source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing values")


test_that("missing values as expected", {
  s <- c(1, 2, 3, NA, 4, 5)

  expect_gte(missing_values(s), 0)
  expect_length(missing_values(s), 1)
  expect_type(missing_values(s), 'integer')

})










