context("testing beis_logo")
testthat::test_that("test expected behaviour for beis_logo function", {

  copy_to <- "P:/"
  white_type <- TRUE
  output <- beis_logo(copy_to = copy_to, white_type = white_type)

  testthat::expect_is(copy_to, "character")
  testthat::expect_is(white_type, "logical")
  testthat::expect_is(output, "character")

  file_exists_col <- file.exists(paste0(copy_to, "beis_logo.png"))
  file_exists_white <- file.exists(paste0(copy_to, "beis_logo_white.png"))

  file_exists <- ifelse(file_exists_col == TRUE | file_exists_white == TRUE, TRUE, FALSE)

  testthat::expect_equal(file_exists, TRUE)

})
