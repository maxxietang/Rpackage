#' A Finding Player Function
#'
#' This function allows you to find the oldest NBA at the year specified.
#'  If more than 1 players have the same age at that time, only one player will be shown (Alphabetical order)
#' @param year Specified a year to return the oldest player at that time
#' @keywords oldest
#' @export
#' @examples
#' oldest_plr(1952)

oldest_plr <- function(x){
  y <- subset(nba, nba$Year == x)
  y_sorted <- y[order(-y$Age, y$Player),]
  print(y_sorted[1,2])
}
