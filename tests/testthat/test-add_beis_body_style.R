## test prep
trade <-
  data.frame(
    Country = c("France", "Germany", "Italy", "Spain", "UK", "US"),
    Imports = c(100000L, 150000L, 270000L, 123000L, 790000L, 5678900L),
    Exports = c(230000L, 120000L, 870000L, 738000L, 654000L, 65678000L)
  )

input <- openxlsx::createWorkbook()
openxlsx::addWorksheet(input, "Trade")
openxlsx::writeData(input, "Trade", trade)



test_that("error works", {
  expect_error(add_beis_body_style(wb = mtcars))
})


