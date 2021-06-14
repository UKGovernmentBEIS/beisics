#' Includes BEIS css stylesheet.
#'
#' Copies BEIS-styling css stylesheet to specified directory.
#'
#' @param copy_to The working directory to copy the css file to, default current working directory
#'
#' @return css file to style elements of markdown and dashboards.
#' @export
#'
#' @examples get_beis_css(copy_to = getwd())


get_beis_css <- function(copy_to = getwd()){

  assertthat::assert_that(is.character(copy_to))

  copy_to <- normalizePath(copy_to)

    file.copy(system.file("css/beis_css.css", package = "beisics"), copy_to)

    file.copy(system.file("css/beis_slides.css", package = "beisics"), copy_to)

}
