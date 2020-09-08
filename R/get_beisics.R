#' Copy BEIS logo and css into directory at once.
#'
#' Copies the standard or white typeface version of the BEIS logo to your current working directory.
#' Also copies BEIS-styling css stylesheet to specified directory. Also updates ggplot default colouring.
#'
#' @param copy_to The working directory to copy the logo to, default current working directory
#' @param white_type Whether or not to copy the white typeface version of the logo, default FALSE
#'
#' @return Returns a copy of the png image to the directory
#' @export
#'
#' @examples get_beisics(copy_to = "my_folder", white_type = FALSE)



get_beisics <- function(copy_to = getwd(), white_type = FALSE){

  assertthat::assert_that(is.character(copy_to))
  assertthat::assert_that(is.logical(white_type))

  get_beis_logo(copy_to = copy_to, white_type = white_type)
  get_beis_css(copy_to = copy_to)

  # update ggplot defaults for different graphs
  # need to add trycatch for different graphs that can't be called
  #geom_params <- ls(pattern =  '^geom_', env = as.environment('package:ggplot2'))
  #geoms <- gsub("geom_", "", geom_params)
  #assertthat::assert_that(is.vector(geoms))
  #lapply(geoms, ggplot2::update_geom_defaults, list(fill = "#003366"))



}
