#' Style a ggplot with a BEIS theme.
#'
#' Uses the ggplot2::theme() function to create a BEIS style for ggplots.
#'
#' @return Returns a styled ggplot when used as the theme
#' @export
#'
#' @examples ggplot2::ggplot(mtcars) +
#' ggplot2::geom_point(ggplot2::aes(x = wt, y = mpg, colour = gear)) +
#' theme_beis()

theme_beis <- function(){

  ggplot2::theme(
    #base_size = 11,
    #base_family = "",
    #base_line_size = base_size/22,
    #base_rect_size = base_size/22,
    text = ggplot2::element_text(size = 12),
    axis.title = ggplot2::element_text(face = "bold"),
    axis.title.y = ggplot2::element_text(margin = ggplot2::margin(0, 30, 0, 0,"pt")),
    panel.background = ggplot2::element_rect(fill = "white", color = "white"),
    panel.grid.major.x = ggplot2::element_line(colour = "grey"),
    axis.line.x.bottom = ggplot2::element_line(colour = "grey"),
    axis.line.y.left = ggplot2::element_line(colour = "grey")
  )

}
