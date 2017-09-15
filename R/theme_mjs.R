require(ggplot2)

#' A ggplot2 theme for the Milwaukee Journal Sentinel
#'
#' Add this to a ggplot2 plot to apply the default Milwaukee Journal Sentinel style
#' @keywords ggplot2, theme
#' @export
#' @examples 
#' ggplot(mtcars, aes(x = hp, y = mpg)) + geom_point() + theme_mjs()

theme_mjs <- function() {
  (theme_minimal() +
     theme(
       text = element_text(family = 'Unify Sans', size = 14, color = '#444444'),
       rect = element_rect(fill = 'steelblue'),
       plot.title = element_text(size = 20, face = 'bold', margin = margin(0, 0, 10, 0)),
       plot.subtitle = element_text(size = 16, color = '#666666', margin = margin(0, 0, 10, 0))
     )
  )
}
