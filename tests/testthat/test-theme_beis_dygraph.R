context("testing theme_beis_dygraph")
testthat::test_that("test expected behaviour for theme_beis_dygraph function", {

  d <- dygraphs::dygraph(cbind(mdeaths, fdeaths), main = "title")
  d <- dygraphs::dyAxis(d, "y", drawGrid = FALSE)

  output <- theme_beis_dygraph(d, copy_to = "P:/")

  testthat::expect_s3_class(output, "dygraphs")

})
