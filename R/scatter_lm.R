#' Create a scatter plot and fitted linear model
#'
#' @param x Class name of x-axis of dataset.
#' @param y Class name of y-axis of dataset.
#' @param df Name of dataset.
#'
#' @return
#' A scatter plot containing a fitted linear model.
#' @export
#'
scatter_lm <- function(x, y, df) {
  ggplot2::ggplot(df, aes_string(x, y)) +
    geom_point(na.rm = TRUE) +
    geom_smooth(method = "lm", se = TRUE, colour = "purple", na.rm = TRUE)+
    theme_classic()
}
