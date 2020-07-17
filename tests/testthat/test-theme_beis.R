context("testing theme_beis")
testthat::test_that("test expected behaviour for theme_beis function", {

  p <- ggplot2::ggplot(mtcars) +
    ggplot2::geom_point(ggplot2::aes(x = wt, y = mpg, colour = gear))
  output <- p + theme_beis()

  testthat::expect_s3_class(output, "ggplot")

})
