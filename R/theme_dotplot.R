#' ggplot theme for dot plots
#'
#' @param vertical logical; whether the orientation of the dotplot is vertical
#'
#' @export
theme_dotplot <- function(vertical = FALSE){

  '%+replace%' <- ggplot2::'%+replace%'

  if (vertical) {
    uls::theme_ls() %+replace%

      ggplot2::theme(
        axis.line.x = ggplot2::element_line(colour=NA),
        axis.text.x = ggplot2::element_blank(),
        axis.ticks.x = ggplot2::element_blank(),
        axis.title.x = ggplot2::element_blank(),
        #strip.text.x.left = ggplot2::element_text(angle = 0, hjust=1, vjust=0),
        panel.grid = ggplot2::element_blank(),
        strip.text.x = ggplot2::element_text(angle=0, hjust=0, vjust=0))
  } else {
    uls::theme_ls() %+replace%

      ggplot2::theme(
        axis.line.y = ggplot2::element_line(colour=NA),
        axis.text.y = ggplot2::element_blank(),
        axis.ticks.y = ggplot2::element_blank(),
        axis.title.y = ggplot2::element_blank(),
        #strip.text.y.left = ggplot2::element_text(angle = 0, hjust=1, vjust=0),
        panel.grid = ggplot2::element_blank(),
        strip.text.y = ggplot2::element_text(angle=0, hjust=0, vjust=0))
  }
}
