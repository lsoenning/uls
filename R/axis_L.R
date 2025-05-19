#' Draw an L-shape axis framework
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_L <-
  function(side, ..., line.col)
  {
    if (side %in% c("left", "bottom")) {
      col <- lattice::trellis.par.get("axis.text")$col
      lattice::axis.default(side, ..., line.col = col)
      if (side == "bottom")
        grid::grid.lines(y = 0)
      if (side == "left")
        grid::grid.lines(x = 0)
    }
  }

#' Draw a C-shape axis framework
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_C <-
  function(side, ..., line.col)
  {
    if (side %in% c("left", "bottom", "top")) {
      col <- trellis.par.get("axis.text")$col
      axis.default(side, ..., line.col = col)
      if (side == "bottom")
        grid::grid.lines(y = 0)
      if (side == "left")
        grid::grid.lines(x = 0)
      if (side == "top")
        grid::grid.lines(y = 1)
    }
  }

#' Draw an U-shape axis framework
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_U <-
  function(side, ..., line.col)
  {
    if (side %in% c("left", "bottom", "right")) {
      col <- trellis.par.get("axis.text")$col
      axis.default(side, ..., line.col = col)
      if (side == "bottom")
        grid::grid.lines(y = 0)
      if (side == "left")
        grid::grid.lines(x = 0)
      if (side == "right")
        grid::grid.lines(x = 1)
    }
  }

#' Draw all axes
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_all <-
  function(side, ..., line.col)
  {
    if (side %in% c("left", "bottom", "top", "right")) {
      col <- trellis.par.get("axis.text")$col
      axis.default(side, ..., line.col = col)
      if (side == "bottom")
        grid::grid.lines(y = 0)
      if (side == "left")
        grid::grid.lines(x = 0)
      if (side == "top")
        grid::grid.lines(y = 1)
      if (side == "right")
        grid::grid.lines(x = 1)
    }
  }

#' Draw left axis only
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_left = function(side, ..., line.col)
{
  if (side %in% "left") {
    col <- trellis.par.get("axis.text")$col
    axis.default(side, ..., line.col = col)
    if (side == "left")
      grid::grid.lines(x = 0)
  }
}

#' Draw bottom axis only
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_bottom = function(side, ..., line.col)
{
  if (side %in% "bottom") {
    col <- trellis.par.get("axis.text")$col
    axis.default(side, ..., line.col = col)
    if (side == "bottom")
      grid::grid.lines(y = 0)
  }
}

#' Draw top axis only
#'
#' @param side which side
#' @param line.col which line color
#'
#' @export
axis_top = function(side, ..., line.col)
{
  if (side %in% "top") {
    col <- trellis.par.get("axis.text")$col
    axis.default(side, ..., line.col = col)
    if (side == "top")
      grid::grid.lines(y = 1)
  }
}
