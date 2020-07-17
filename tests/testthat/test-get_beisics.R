context("testing get_beisics")
testthat::test_that("test expected behaviour for get_beisics function", {

  copy_to <- "P:/"
  white_type <- TRUE
  output1 <- get_beis_logo(copy_to = copy_to, white_type = white_type)
  output2 <- get_beis_css(copy_to = copy_to)
  output <- (output1 == TRUE) & (output2 == output1)

  testthat::expect_is(copy_to, "character")
  testthat::expect_is(white_type, "logical")
  testthat::expect_is(output1, "logical")
  testthat::expect_is(output2, "logical")

  file_exists_col <- file.exists(paste0(copy_to, "beis_logo.png"))
  file_exists_white <- file.exists(paste0(copy_to, "beis_logo_white.png"))
  file_exists_css <- file.exists(paste0(copy_to, "beis_css.css"))

  files_exist <- ifelse((file_exists_col == TRUE | file_exists_white == TRUE) &
                          (file_exists_css == TRUE), TRUE, FALSE)

  testthat::expect_equal(files_exist, TRUE)

})
