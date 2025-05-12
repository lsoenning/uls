## Custom plot settings for lattice
#----------------------------------

lattice_ls <- list()
lattice_ls$axis.line$col <- NA
lattice_ls$strip.border$col <- NA
lattice_ls$strip.background$col <- NA
lattice_ls$layout.heights$strip = 1.4
lattice_ls$clip$panel = "off"

lattice_ls$layout.heights$key.axis.padding <- 0
lattice_ls$layout.heights$xlab <- 0
lattice_ls$layout.heights$bottom.padding <- 0.5
lattice_ls$layout.heights$top.padding <- 1
lattice_ls$layout.heights$key.padding <- 0
lattice_ls$layout.heights$axis.top <- 0
lattice_ls$layout.heights$main <- 0
lattice_ls$layout.heights$main.key.padding <- 0

lattice_ls$layout.widths$ylab <- 0
lattice_ls$layout.widths$axis.panel <- 10
lattice_ls$layout.widths$right.padding <- 0
lattice_ls$layout.widths$left.padding <- 1
lattice_ls$layout.widths$key.right <- 0
lattice_ls$layout.widths$axis.right <- 0
lattice_ls$layout.widths$ylab.right <- 0

lattice_ls$axis.text$col <- "black"

lattice_ls$axis.components$left$pad1 <- 0.5
lattice_ls$axis.components$left$pad2 <- 1.4
lattice_ls$axis.components$bottom$pad1 <- 0.5
lattice_ls$axis.components$bottom$pad2 <- 1.4

# tick marks
lattice_ls$axis.components$bottom$tck <- .5
lattice_ls$axis.components$left$tck   <- .5
lattice_ls$axis.components$top$tck    <- .5
lattice_ls$axis.components$right$tck  <- .5

# space between axis label and tick mark labels
lattice_ls$layout.widths$ylab.axis.padding <- 0.2
lattice_ls$layout.heights$axis.xlab.padding <- 0.2


lattice_ls$box.rectangle$col = 1
lattice_ls$box.umbrella$col = 1
lattice_ls$box.dot$col = 1
lattice_ls$plot.symbol$col = 1

# set font size and point size
lattice_ls$fontsize$text = 10
lattice_ls$fontsize$points = 4

lattice_ls$par.main.text$font = 2
lattice_ls$par.main.text$just = "left"
lattice_ls$par.main.text$x = grid::unit(5, "mm")

lattice_ls$par.sub.text$font = 1
lattice_ls$par.sub.text$cex = .8
lattice_ls$par.sub.text$col = "grey30"
lattice_ls$par.sub.text$just = "left"
lattice_ls$par.sub.text$x = grid::unit(5, "mm")

usethis::use_data(lattice_ls, overwrite = TRUE)

