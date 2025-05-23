#' Modified ggplot2 "theme_classic()"
#'
#' @param base_size base size
#' @param base_family base family
#' @param base_line_size base line size
#' @param base_rect_size base rect size
#'
#' @export
theme_classic_ls <- function (
    base_size = 11,
    base_family = "",
    base_line_size = base_size/22,
    base_rect_size = base_size/22){

  '%+replace%' <- ggplot2::'%+replace%'

  ggplot2::theme_bw(base_size = base_size,
           base_family = base_family,
           base_line_size = base_line_size,
           base_rect_size = base_rect_size) %+replace%

    ggplot2::theme(
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(colour = "black",
                                        lineend = "round",
                                        linewidth = ggplot2::rel(.8)),
      axis.ticks = ggplot2::element_line(colour = "black",
                                         lineend = "round",
                                         linewidth = ggplot2::rel(.8)),
      legend.key = ggplot2::element_blank(),
      strip.background = ggplot2::element_blank(), complete = TRUE)
}
