#' Style a ggplot with a BEIS theme.
#'
#' Uses the ggplot2::theme() function to create a BEIS style for ggplots.
#'
#' @param default_colours whether to use the default colour scheme for BEIS or the alternative
#' @param distinct_colours Whether to use Distinct colours - maximum of 5
#' @param ... Any additional arguments to pass to ggtheme
#'
#' @return Returns a styled ggplot when used as the theme
#' @export
#'
#' @import ggplot2
#'
#' @examples ggplot2::ggplot(mtcars) +
#' ggplot2::geom_point(ggplot2::aes(x = wt, y = mpg, colour = as.factor(gear))) +
#' theme_beis()

theme_beis <- function(default_colours = TRUE, distinct_colours = FALSE, ...){

  # to be updated to include
  # whether the plot is horizontal or vertical
  # so lines correspond

  ggtheme <-  theme(
    text = ggplot2::element_text(size = 12),
    axis.title = ggplot2::element_text(face = "bold"),
    axis.title.y = ggplot2::element_text(margin = ggplot2::margin(0, 30, 0, 0,"pt")),
    panel.background = ggplot2::element_rect(fill = "white", color = "white"),
    panel.grid.major.y = ggplot2::element_line(colour = "grey"),
    axis.line.x.bottom = ggplot2::element_line(colour = "grey"),
    axis.line.y.left = ggplot2::element_line(colour = "white"),
    legend.position = "bottom",
    legend.title = ggplot2::element_blank(),
    plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold", colour = "#505050"),
    plot.subtitle = element_text(hjust = 0)
  )


  color_manual <- scale_color_manual(values = beis_colours(default = default_colours,
                                                           distinct = distinct_colours))

  fill_manual <- scale_fill_manual(values = beis_colours(default = default_colours,
                                                         distinct = distinct_colours))

  labs <- ggplot2::labs(x = NULL, y = NULL)

  return(list(ggtheme, labs, color_manual, fill_manual))

}

