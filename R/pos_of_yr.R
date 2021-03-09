#' A Tom Van Function
#'
#' This function retrives the year Tom Van played in the year specified
#' @param year Which year are you interested in?
#' @keywords pos
#' @export
#' @examples
#' pos_of_yr(1966)

pos_of_yr <- function(year){
  r <- match(year,tom$Year)
  print(tom$Player[r])
}
