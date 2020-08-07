#' Copy & call BEIS css from working directory.
#'
#' Calls \code{get_beis_css()} with default and then uses the resulting filepath.
#'
#' @param copy_to The working directory to copy the css to, default current working directory
#'
#' @return Returns a copy of the png image to the directory AND calls the image filepath for use
#' @export
#'
#' @examples beis_css(copy_to = "my_folder")
#'
#' @seealso get_beis_css

beis_css <- function(copy_to = getwd()){

  assertthat::assert_that(is.character(copy_to))

  get_beis_css(copy_to = copy_to)

  css_path <- paste0(copy_to, "beis_css.css")

  return(css_path)

}
