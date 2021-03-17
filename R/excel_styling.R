
#' Add a header in a 'beis' style format to your workbook
#'
#' There are two header styles available. One with a bottom border and blue text and another
#' with a filled blue background and bold white text.
#'
#' Uses the default beis blue "#003366"
#'
#' @param wb the workbook to add the stylying to as generarated from the openxlsx package
#' @param sheet the sheet to apply the styling to
#' @param rows the row to apply the syling to
#' @param cols the columns to apply the syling to
#' @param header_classic whether to use a classic beis header with just the bottom border or
#' a pronounced header with blue background and white text
#' @param halign rigght align by default
#' @param ... additional parameters you might want to add from openxlsx::create_style()
#'
#' @return an updated workbook object
#' @export
#' @importFrom openxlsx createStyle addStyle
#'
#' @examples
#' #create some dummy data
#' trade <-
#'  data.frame(
#'    Country = c("France", "Germany", "Italy", "Spain", "UK", "US"),
#'     Imports = c(100000L, 150000L, 270000L, 123000L, 790000L, 5678900L),
#'     Exports = c(230000L, 120000L, 870000L, 738000L, 654000L, 65678000L)
#'   )
#'
#'# create the workbook and write in the worksheet with the data
#' wb <- openxlsx::createWorkbook()
#' openxlsx::addWorksheet(wb, "Trade")
#' openxlsx::writeData(wb, "Trade", trade)
#'
#'
#' add_beis_header_style(wb, header_classic = FALSE)
#' add_beis_body_style(wb, textDecoration = "italic")
#'
#' ##NOT RUN
#' #saveWorkbook(wb = wb, file =  "P:/wb_test.xlsx", overwrite = TRUE)

add_beis_header_style <- function(wb, sheet = 1, rows = 1, cols = 1:3,
                                  header_classic = TRUE, halign = "right", ...) {

  if(header_classic) {
    headerStyle <- createStyle(fontSize = 12,
                               fontColour = beisics::beis_colours()[1],
                               textDecoration = "bold",
                               border = "bottom",
                               borderColour = beisics::beis_colours()[1],
                               halign = halign, ...)

  } else {

  headerStyle <- createStyle(fontSize = 12,
                             fgFill = beis_colours()[1],
                             fontColour = "#FFFFFF", textDecoration = "bold",
                             borderStyle = "none", ...)

  }

  addStyle(wb, sheet = sheet, style = headerStyle, rows = rows, cols =cols)

}


#' Function for styling the main body of an excel table
#'
#' Styled based on recommended defaults by CAGG Team. Will remove gridlines for sheet applied by default
#'
#'#' Uses the default beis blue "#003366"
#' @param wb the workbook to add the stylying to as generarated from the openxlsx package
#' @param sheet the sheet to apply the styling to, can be a number or a string
#' @param rows the row to apply the syling to
#' @param cols the columns to apply the syling to
#' @param showGridLines Whether to show gridline in the worksheet. Default is FALSE.
#' @param ... additional parameters you might want to add from openxlsx::create_style()
#'
#' @return an updated workbook object
#' @export
#' @importFrom openxlsx createStyle addStyle showGridLines
#'
#' @examples
#' #create some dummy data
#' trade <-
#'  data.frame(
#'    Country = c("France", "Germany", "Italy", "Spain", "UK", "US"),
#'     Imports = c(100000L, 150000L, 270000L, 123000L, 790000L, 5678900L),
#'     Exports = c(230000L, 120000L, 870000L, 738000L, 654000L, 65678000L)
#'   )
#'
#' # create the workbook and write in the worksheet with the data
#' wb <- openxlsx::createWorkbook()
#' openxlsx::addWorksheet(wb, "Trade")
#' openxlsx::writeData(wb, "Trade", trade)
#'
#' add_beis_header_style(wb, header_classic = FALSE)
#' add_beis_body_style(wb, textDecoration = "italic")
#'
#' ##NOT RUN
#' #saveWorkbook(wb = wb, file =  "P:/wb_test.xlsx", overwrite = TRUE)

add_beis_body_style <- function(wb, sheet = 1, rows = 2:6, cols = 1:3,
                                showGridLines = FALSE, ...) {



  showGridLines(wb, sheet = sheet, showGridLines = showGridLines)


  bodyStyle <- createStyle(borderStyle = "none", numFmt = "0,000.0",
                           fontColour = beis_colours()[1],
                           ...)

  #Add style to all the cells
  addStyle(wb, sheet = sheet, style = bodyStyle, rows = rows, cols =cols, gridExpand = TRUE)
  #Add a border to just to the bottom cells
  addStyle(wb, sheet = sheet,
           style = createStyle(border = "Bottom",
                               borderColour = beis_colours()[1],
                               numFmt = "0,000.0",
                               fontColour = beis_colours()[1],
                               ...),
           rows = max(rows)+1, cols =cols, gridExpand = TRUE)

}

