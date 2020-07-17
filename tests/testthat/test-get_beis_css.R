context("testing get_beis_css")
testthat::test_that("test expected behaviour for get_beis_css function", {

  copy_to <- "P:/"
  output <- get_beis_css(copy_to = copy_to)

  testthat::expect_is(copy_to, "character")
  testthat::expect_is(output, "logical")

  file_exists <- file.exists(paste0(copy_to, "beis_css.css"))

  testthat::expect_equal(file_exists, TRUE)

})
