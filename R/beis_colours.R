#' Get BEIS colour palette.
#'
#' Retrieves a BEIS-like colour palette as a character vector.
#'
#' @param n The number of colours to return, max is 15 for non-distinct, 5 for distinct.
#' @param distinct Whether to return only colours which are more easily distinguishable or all colours
#'
#' @return Returns a character vector of the hex codes for BEIS colours
#'
#' BEIS colours:
#' Dark blue = #003366
#' Bright blue = #0099cc
#' Grey = #a8b8be
#' Magenta (pink) = #ee3d8f
#' Green = #9ccd63
#' Turquoise = #62c6c2
#' Gold = #fbb034
#' Platinum = #c2baa9
#'
#' Non-BEIS colours also included:
#' Light blue = #c5e8ff
#' Darker green = #5b842b
#' Darker grey = #505050
#' Red = #ec3337
#' Darker red = #9a0e11
#' White = #FFFFFF
#' Black = #000000
#'
#' The ONS recommend three helpful rules when choosing colours: (1) Get it right in black and white, (2) The safest hue is blue and (3) Red and green should never be seen (together). For more on choosing colour palettes, see ONS's introduction on 'Using colours', available on their website
#'
#'
#' @export
#'
#' @examples beis_colours(n = 3, distinct = TRUE)


beis_colours <- function(n = 15, distinct = FALSE){

  assertthat::assert_that(is.numeric(n))
  assertthat::assert_that(is.logical(distinct))

  if (distinct == FALSE){

    colours <- c("#003366", "#0099cc", "#a8b8be", "#ee3d8f", "#9ccd63", "#62c6c2", "#fbb034", "#c2baa9",
                 "#c5e8ff", "#5b842b", "#505050", "#ec3337", "#9a0e11", "#FFFFFF", "#000000")
  } else {

    if (n > 6){

      n <- 6

    }

    colours <- c("#003366", "#0099cc", "#c2baa9",
                 "#5b842b", "#ee3d8f", "#505050")

  }

  return(colours[1:n])


}
