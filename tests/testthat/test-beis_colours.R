context("testing beis_colours function")
testthat::test_that("test expected behaviour for beis_colours function", {

  n <- 11
  distinct <- FALSE
  output <- beis_colours(n = n, distinct = distinct)

  testthat::expect_type(n , "double")
  testthat::expect_type(distinct, "logical")
  testthat::expect_type(output, "character")

  testthat::expect_equal(length(output), n)

  n <- 11
  distinct <- TRUE
  output <- beis_colours(n = n, distinct = distinct)

  testthat::expect_equal(length(output), 6)


})
