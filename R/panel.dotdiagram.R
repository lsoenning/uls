#' Draw a dot diagram in lattice
#'
#' @param x vector of values to be plotted
#' @param n_bins number of bins
#' @param scale_y controls the distance between stacked dots
#' @param set_pch plotting symbol
#' @param set_col color of plotting symbol
#' @param set_cex size of plottings symbol
#' @param set_alpha transparancy of plotting symbol
#' @param seq_min custom x-value to start binning
#' @param seq_max custom x-value to end binning
#' @param y_anchor for dot diagram, base of the dots
#' @param vertical whether the dotdiagram should be drawn vertically
#' @param x_anchor for vertical dot diagram, base of the dots
#' @param set_fontfamily fontfamily of plotting symbol
#' @param set_lwd linewidth of plotting symbol
#' @param set_fontface fontface of plotting symbol
#' @param downwards whether the dot diagram should be drawn downwards
#' @param leftwards whether the vertical dot diagram should be drawn leftwards
#'
#' @export
panel.dotdiagram <- function(
    x,
    n_bins=20,
    scale_y=1,
    set_pch=19, set_col=1, set_cex=1, set_alpha=1,
    seq_min=min(x), seq_max=max(x),
    x_anchor=0, y_anchor=0,
    set_fontfamily=1, set_lwd=1, set_fontface=1,
    vertical=F,
    leftwards=F, downwards=F){
  x_steps <- diff(c(seq_min, seq_max))/(n_bins-1)
  x_breaks <- seq(seq_min-x_steps/2, seq_max+x_steps/2, length.out=n_bins+1)
  counts <- as.numeric(table(cut(x, breaks = x_breaks, right = F)))
  dot_col_matrix <- matrix("NA", nrow=n_bins, ncol=max(counts))
  for(i in 1:nrow(dot_col_matrix)) {
    if(counts[i] >= 1) dot_col_matrix[i, 1:counts[i]] <- set_col
  }
  if(vertical==T){
    if(leftwards == F){
      panel.points(
        x = (rep(1:max(counts), each=n_bins)*scale_y) + x_anchor,
        y = rep(seq(seq_min, seq_max, length.out=n_bins), max(counts)), pch=set_pch,
        col=dot_col_matrix, cex=set_cex, alpha=set_alpha, fontfamily=set_fontfamily,
        lwd=set_lwd, fontface=set_fontface
      )
    }
    if(leftwards == T){
      panel.points(
        x = -((rep(1:max(counts), each=n_bins)*scale_y)) + x_anchor,
        y = rep(seq(seq_min, seq_max, length.out=n_bins), max(counts)), pch=set_pch,
        col=dot_col_matrix, cex=set_cex, alpha=set_alpha, fontfamily=set_fontfamily,
        lwd=set_lwd, fontface=set_fontface
      )
    }
  }
  if(vertical==F){
    if(downwards == F){
      panel.points(
        y = (rep(1:max(counts), each=n_bins)*scale_y) + y_anchor,
        x = rep(seq(seq_min, seq_max, length.out=n_bins), max(counts)), pch=set_pch,
        col=dot_col_matrix, cex=set_cex, alpha=set_alpha, fontfamily=set_fontfamily,
        lwd=set_lwd, fontface=set_fontface
      )
    }
    if(downwards == T){
      panel.points(
        y = -((rep(1:max(counts), each=n_bins)*scale_y)) + y_anchor,
        x = rep(seq(seq_min, seq_max, length.out=n_bins), max(counts)), pch=set_pch,
        col=dot_col_matrix, cex=set_cex, alpha=set_alpha, fontfamily=set_fontfamily,
        lwd=set_lwd, fontface=set_fontface
      )
    }
  }
}
