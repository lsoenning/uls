theme_dotplot <- function(vertical = FALSE){

  if (vertical == FALSE) {
    theme_ls() %+replace%
      theme(
        axis.line.x=element_line(colour=NA),
        axis.text.x=element_blank(),
        axis.ticks.x = element_blank(),
        axis.title.x=element_blank(),
        strip.text.x.left = element_text(angle = 0, hjust=1, vjust=0),
        panel.grid = element_blank(),
        strip.text.x = element_text(angle=0, hjust=0, vjust=0))
  } else {
    theme_ls() %+replace%
      theme(
        axis.line.y=element_line(colour=NA),
        axis.text.y=element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y=element_blank(),
        strip.text.y.left = element_text(angle = 0, hjust=1, vjust=0),
        panel.grid = element_blank(),
        strip.text.y = element_text(angle=0, hjust=0, vjust=0))
  }
}
