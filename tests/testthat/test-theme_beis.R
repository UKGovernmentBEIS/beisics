context("testing theme_beis")
testthat::test_that("test expected behaviour for theme_beis function", {

  p <- ggplot2::ggplot(mtcars, ggplot2::aes(x=cyl, y=mpg, fill = as.factor(gear))) +
    ggplot2::geom_bar(stat="identity")

  output <- p + theme_beis()

  testthat::expect_s3_class(output, "ggplot")

})
