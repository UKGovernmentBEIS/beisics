#' Copy & call BEIS logo from working directory.
#'
#' Calls \code{get_beis_logo()} with default and then uses the resulting filepath.
#'
#' @param copy_to The working directory to copy the logo to, default current working directory
#' @param white_type Whether or not to copy the white typeface version, default FALSE
#'
#' @return Returns a copy of the png image to the directory AND calls the image filepath for use
#' @export
#'
#' @examples beis_logo(copy_to = "my_folder", white_type = FALSE)
#'
#' @seealso get_beis_logo

beis_logo <- function(copy_to = getwd(), white_type = FALSE){

  assertthat::assert_that(is.character(copy_to))
  assertthat::assert_that(is.logical(white_type))

  get_beis_logo(copy_to = copy_to, white_type = white_type)

  if (white_type == FALSE){

    logo_path <- paste0(copy_to, "beis_logo.png")

  } else {

    logo_path <- paste0(copy_to, "beis_logo_white.png")

  }

  return(logo_path)

}
