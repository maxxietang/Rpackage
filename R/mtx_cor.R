#' A Matrix Correlation Function
#'
#' This function will calculate the correlation matrix for all numeric variables in the NBA data for year specified
#' @param year which year are you interested in?
#' @keywords mtx
#' @export
#' @examples
#' mtx_cor(1966)

mtx_cor <- function(year){
 df <- subset(nba, nba$Year == year)
 df_na <- df[colSums(!is.na(df)) > 0]
 df_num <- dplyr::select_if(df_na, is.numeric)
 print(cor(df_num))
}
