#' Style a dygraph with a BEIS theme.
#'
#' Uses the dygraphs package and calls beis_css() and beis_colours() to style
#'
#' @param dygraph The dygraph object
#' @param ... Any additional arguments to pass to dygraph or beis_css or beis_colours()
#' @param copy_to The working directory to copy the logo to, default current working directory
#' @param default_colours whether to use the default colour scheme or
#'
#' @return Returns a styled dygraph when piped to
#' @export
#' @examples d <- dygraphs::dygraph(cbind(mdeaths, fdeaths), main = "title")
#' p <- theme_beis_dygraph(d, copy_to = "P:/")
#'
#' @seealso beis_css, beis_colours

theme_beis_dygraph <- function(dygraph, copy_to = getwd(), default_colours = TRUE){

  p <- dygraphs::dyAxis(dygraph, "y", drawGrid = FALSE)

  p <- dygraphs::dyCSS(p, beis_css(copy_to))

  p <- dygraphs::dyOptions(p, colors = beis_colours(default = default_colours))


}
