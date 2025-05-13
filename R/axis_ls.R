#' Control axis appearance in lattice plots
#'
#' @param type character string specifying which lines should be drawn; see details below
#' @param side inherited from lattice (check if function works without this)
#' @param ... parameter settings that are passed through
#' @param line.col set color of axis line
#'
#' @details A four-number character string is used to specify which axes to draw, where a "1" means that the line will be drawn, "0" means it will be omitted. The sequence starts at the top (north -- east -- south -- west):
#'
#' * `"1111"` for all axes
#' * `"0011"` for an L-shaped framework
#' * `"1000"` for top axis only
#' * `"0100"` for right axis only
#' * `"0010"` for bottom axis only
#' * `"0001"` for left axis only
#' * `"1011"` for a C-shaped framework
#' * `"0111"` for a U-shaped framework
#' @export
axis_ls <- function(
    side,
    ...,
    line.col,
    type = "0011"){
  if(type == "0011"){
      col <- lattice::trellis.par.get("axis.text")$col
      lattice::axis.default(side = "left", ..., line.col = col)
      lattice::axis.default(side = "bottom", ..., line.col = col)
      if (side == "bottom")
        grid::grid.lines(y = 0)
      if (side == "left")
        grid::grid.lines(x = 0)
  }
  # if(type == "1011"){
  #   if (side %in% c("left", "bottom", "top")) {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "bottom")
  #       grid::grid.lines(y = 0)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #     if (side == "top")
  #       grid::grid.lines(y = 1)
  #   }
  # }
  # if(type == "0111"){
  #   if (side %in% c("left", "bottom", "right")) {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "bottom")
  #       grid::grid.lines(y = 0)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #     if (side == "right")
  #       grid::grid.lines(x = 1)
  #   }
  # }
  # if(type == "1111"){
  #   if (side %in% c("left", "bottom", "top", "right")) {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "bottom")
  #       grid::grid.lines(y = 0)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #     if (side == "top")
  #       grid::grid.lines(y = 1)
  #     if (side == "right")
  #       grid::grid.lines(x = 1)
  #   }
  # }
  # if(type == "0001"){
  #   if (side %in% "left") {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #   }
  # }
  # if(type == "0010"){
  #   if (side %in% "bottom") {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #   }
  # }
  # if(type == "1000"){
  #   if (side %in% "top") {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #   }
  # }
  # if(type == "0100"){
  #   if (side %in% "right") {
  #     col <- lattice::trellis.par.get("axis.text")$col
  #     lattice::axis.default(side, ..., line.col = col)
  #     if (side == "left")
  #       grid::grid.lines(x = 0)
  #   }
  # }
}

