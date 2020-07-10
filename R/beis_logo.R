#' Copy BEIS logo to working directory
#' Copies the standard or white typeface version of the BEIS logo to your current working directory
#' @param copy_to The working directory to copy the logo to, default current working directory
#' @param white_type Whether or not to copy the white typeface version, default FALSE
#'
#' @return Returns a copy of the png image to the directory
#' @export
#'
#' @examples beis_logo(copy_to = "/my_folder", white_type = FALSE)



beis_logo <- function(copy_to = getwd(), white_type = FALSE){

  copy_to <- normalizePath(copy_to)

  if (white_type == TRUE){

    file.copy(system.file("logos/beis_logo_white.png", package = "beisics"), copy_to)

  } else {

    file.copy(system.file("logos/beis_logo.png", package = "beisics"), copy_to)

  }

}
