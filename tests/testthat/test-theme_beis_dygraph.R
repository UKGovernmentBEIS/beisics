context("testing theme_beis_dygraph")
testthat::test_that("test expected behaviour for theme_beis_dygraph function", {

  d <- dygraphs::dygraph(cbind(mdeaths, fdeaths), main = "title") %>%
    dygraphs::dyAxis("y", drawGrid = FALSE)

  output <- d %>% theme_beis_dygraph()

  testthat::expect_s3_class(output, "dygraphs")

})
