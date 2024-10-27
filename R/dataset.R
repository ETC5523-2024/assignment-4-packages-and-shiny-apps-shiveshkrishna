#' IPL High Performers Dataset
#'
#' The `ipl_high_performers` dataset provides batting and bowling statistics for
#' high-performing players in the Indian Premier League (IPL), specifically focusing
#' on players who have scored over 3000 runs or taken more than 90 wickets. This
#' dataset is useful for analyzing players' performances, identifying top performers,
#' and supporting IPL auction strategies.
#'
#' @format A data frame with 8 variables:
#' \describe{
#'   \item{Name}{Player's name}
#'   \item{Team}{The IPL team the player represents}
#'   \item{BattingAVG}{Batting average - runs per inning, indicating consistency}
#'   \item{BattingS/R}{Batting Strike Rate - runs scored per 100 balls faced, indicating scoring speed}
#'   \item{BowlingAVG}{Bowling average - runs conceded per wicket taken, indicating wicket efficiency}
#'   \item{EconomyRate}{Economy Rate - runs conceded per over, showing run control effectiveness}
#'   \item{RunsScored}{Total runs scored by the player across IPL seasons}
#'   \item{Wickets}{Total wickets taken by the player across IPL seasons}
#' }
#'
#' @source IPL 2022 player statistics dataset
#' @examples
#' data(ipl_high_performers)
#' # Display the first few rows of the dataset
#' head(ipl_high_performers)
#'
"ipl_high_performers"
