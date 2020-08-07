#' Style a dygraph with a BEIS theme.
#'
#' Uses the dygraphs package and calls beis_css() and beis_colours() to style
#'
#' @param dygraph The dygraph object
#' @param ... Any additional arguments to pass to dygraph or beis_css or beis_colours()
#'
#' @return Returns a styled dygraph when piped to
#' @export
#' @importFrom magrittr %>%
#'
#' @examples dygraphs::dygraph(cbind(mdeaths, fdeaths), main = "title") %>%
#' theme_beis_dygraph()

theme_beis_dygraph <- function(dygraph, ...){

  dygraphs::dyAxis(dygraph, "y", drawGrid = FALSE) %>%
    dygraphs::dyCSS(beis_css()) %>%
    dygraphs::dyOptions(colors = beis_colours())

}
