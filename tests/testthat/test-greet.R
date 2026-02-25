# R uses the {testthat} package for unit testing:
# - Description: https://testthat.r-lib.org/index.html
# - Available tests: https://testthat.r-lib.org/reference/index.html

test_that("greet() errors on invalid inputs.", {
  expect_error(greet(10L))
  expect_error(greet(NA_character_))
  expect_error(greet(c("A", "B", "C")))
})

test_that("greet() works as expected.", {
  expect_output(greet("Tony"), "Tony")
})
