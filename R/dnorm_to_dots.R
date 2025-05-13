#' Create data points for a dot diagram representation of a normal density
#'
#' @param n_dots number of dots
#' @param mean mean of normal distribution
#' @param sd standard deviation of normal distribution
#'
#' @returns a numeric vector
#' @export
#'
#' @examples
#' dnorm_to_dots(
#'   n_dots = 30,
#'   mean = 0,
#'   sd = 1)
dnorm_to_dots <- function(n_dots = 100, mean = 0, sd = 1){
  seq_quantiles <- seq(0, 1, length = n_dots+1) - (1/n_dots)/2
  seq_quantiles <- seq_quantiles[-1]
  output <- qnorm(seq_quantiles, mean = mean, sd = sd)
  return(output)
}
