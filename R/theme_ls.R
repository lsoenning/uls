#' Custom theme for ggplot
#'
#' @export
theme_ls <- function(){
  ggplot2::theme_classic() + ggplot2::theme_replace(

      #grid elements
      axis.line.x = ggplot2::element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.line.y = ggplot2::element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.ticks.x = ggplot2::element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.ticks.y = ggplot2::element_line(colour = 'black', linewidth = 0.25, lineend="round"),

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = ggplot2::element_text(             #title
        size = 10,                #set font size
        margin = ggplot2::margin(b = 5),
        hjust = 0,                #left align
        vjust = 1),               #raise slightly

      plot.subtitle = ggplot2::element_text(          #subtitle
        hjust = 0,                #left align
        margin = ggplot2::margin(b = 5),
        size = 10),               #font size

      plot.caption = ggplot2::element_text(           #caption
        size = 8,                 #font size
        hjust = 1),               #right align

      axis.title.x = ggplot2::element_text(             #axis titles
        margin = ggplot2::margin(t = 2),
        size = 10),               #font size
      axis.title.y = ggplot2::element_text(             #axis titles
        margin = ggplot2::margin(r = 2),
        size = 10, angle=90),               #font size

      axis.text.x = ggplot2::element_text(              #axis text
        margin = ggplot2::margin(t = 1),
        size = 8),
      axis.text.y = ggplot2::element_text(              #axis text
        margin = ggplot2::margin(r = 1),
        size = 8),

      strip.background = ggplot2::element_blank(),
      legend.position = "none"
    )
}
