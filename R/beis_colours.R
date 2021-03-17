#' Get BEIS colour palette.
#'
#' Retrieves a BEIS-like colour palette as a character vector.
#'
#' @param n The number of colours to return, max is 15 for non-distinct, 5 for distinct.
#' @param distinct Whether to return only colours which are more easily distinguishable or all colours
#' @param default Choose whether to use the default BEIS colour scheme or the alternative (unofficial)
#'
#' @return Returns a character vector of the hex codes for BEIS colours
#'
#' BEIS colours primary (as of October 2020):
#' Dark blue = #003366
#' Cyan = #0099cc
#'
#' BEIS colours secondary
#' Secondary colours
#'	Lime (#99cc00)
#'  Cerise (#cc0099)
#'	Gold (#ffcc33)
#'	Orange (#ff9933)
#'	Magenta (#ff3399)
#'	Green (#66cc33)
#'	Purple (#663399)
#'	Lilac (#996699)
#' 	Marine grey (#b3bfc5)
#'	Dark slate (#555559)
#'
#' Alternate secondary colours
#'  Grey = #a8b8be
#'  cobalt blue = #0047ab
#'  cyan = #689d9c
#'  Dark moss green = #4a5d23
#'  Teal = #006666
#'  Medium dark blue = #3d4556
#'
#' Non-BEIS colours also used:
#' Light blue = #c5e8ff -
#' Root beer = #4c1a09
#' Pistachio green = #93c572
#' Darker grey = #505050
#' Red = #ec3337
#' Darker red = #9a0e11
#' White = #FFFFFF - Not Used
#' Black = #000000
#'
#' The ONS recommend three helpful rules when choosing colours: (1) Get it right in black and white, (2) The safest hue is blue and (3) Red and green should never be seen (together). For more on choosing colour palettes, see ONS's introduction on 'Using colours', available on their website
#'
#'
#' @export
#'
#' @importFrom assertthat assert_that
#'
#' @examples beis_colours(n = 3, distinct = TRUE)


beis_colours <- function(n = 15, distinct = FALSE, default = TRUE){

  assert_that(is.numeric(n))
  assert_that(is.logical(distinct))
  assert_that(n <= 15, msg = "There are only a maximum of 15 colours available within the palettes")


  if (distinct == FALSE){
    if(default == TRUE) {
      colours <- c("#003366", "#0099cc", "#99cc00", "#cc0099", "#ffcc33", "#ff9933", "#ff3399",
                   "#66cc33", "#663399", "#996699", "#ec3337", "#9a0e11", "#555559", "#b3bfc5",
                   "#000000")

    } else {

    colours <- c("#003366", "#0099cc", "#a8b8be", "#0047ab", "#689d9c", "#4a5d23", "#006666", "#3d4556",
                 "#4c1a09", "#93c572", "#505050", "#ec3337", "#9a0e11", "#fbb034", "#000000")
  }} else {

    if (n > 6){

      n <- 6

    }

    colours <- c("#003366", "#0099cc", "#b3bfc5",
                 "#99cc00", "#ee3d8f", "#ff9933")

  }

  return(colours[1:n])


}
