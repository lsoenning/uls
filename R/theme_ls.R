# Custom theme for ggplot

theme_ls <- function(){
  theme_classic() %+replace%    #replace elements we want to change

    theme(

      #grid elements
      axis.line.x = element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.line.y = element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.ticks.x = element_line(colour = 'black', linewidth = 0.25, lineend="round"),
      axis.ticks.y = element_line(colour = 'black', linewidth = 0.25, lineend="round"),

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = element_text(             #title
        size = 10,                #set font size
        margin = margin(b = 5),
        hjust = 0,                #left align
        vjust = 1),               #raise slightly

      plot.subtitle = element_text(          #subtitle
        hjust = 0,                #left align
        margin = margin(b = 5),
        size = 10),               #font size

      plot.caption = element_text(           #caption
        size = 8,                 #font size
        hjust = 1),               #right align

      axis.title.x = element_text(             #axis titles
        margin = margin(t = 2),
        size = 10),               #font size
      axis.title.y = element_text(             #axis titles
        margin = margin(r = 2),
        size = 10, angle=90),               #font size

      axis.text.x = element_text(              #axis text
        margin = margin(t = 1),
        size = 8),
      axis.text.y = element_text(              #axis text
        margin = margin(r = 1),
        size = 8),

      strip.background = element_blank(),
      legend.position="none"
    )
}
