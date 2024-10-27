#' Ipl: A Comprehensive IPL Data Analysis Package
#'
#' The `Ipl` package provides tools for analyzing key performance metrics of IPL players,
#' focusing on metrics relevant to T20 cricket strategies. It includes a Shiny app for
#' visualizing and filtering players based on batting and bowling performance data.
#' The package also provides a dataset, \code{ipl_high_performers}, with data on
#' top IPL players, which users can explore to make data-driven decisions for team building.
#'
#' @section Key Features:
#' - **Shiny App**: Interactive app to explore IPL player data with filters for team and player type.
#' - **Dataset**: \code{ipl_high_performers} includes batting and bowling statistics for high-performing players.
#' - **Batting Analysis**: Scatter plot visualization for \code{Batting Average} vs. \code{Strike Rate}.
#' - **Bowling Analysis**: Scatter plot visualization for \code{Bowling Average} vs. \code{Economy Rate}.
#'
#' @section Installation:
#' The package can be installed from GitHub using \code{remotes::install_github("yourusername/Ipl")}.
#'
#' @section Example:
#' After loading the package, launch the Shiny app to explore the player performance data:
#' \code{launch_app()}
#'
#' @section Datasets:
#' - \code{ipl_high_performers}: IPL players' performance metrics for batting and bowling.
#'
#' @docType package
#' @name Ipl
NULL

#' IPL High Performers Dataset
#'
#' The \code{ipl_high_performers} dataset includes batting and bowling statistics
#' of high-performing IPL players, focusing on those with over 3000 runs or over 90 wickets.
#' This dataset helps in analyzing players who contribute significantly to their teams.
#'
#' @format A data frame with 7 variables:
#' \describe{
#'   \item{Name}{Player's name}
#'   \item{Team}{Team the player represents}
#'   \item{BattingAVG}{Batting average}
#'   \item{BattingS/R}{Strike rate (runs per 100 balls)}
#'   \item{BowlingAVG}{Bowling average (runs conceded per wicket)}
#'   \item{EconomyRate}{Economy rate (runs conceded per over)}
#'   \item{RunsScored}{Total runs scored by the player}
#'   \item{Wickets}{Total wickets taken by the player}
#' }
#'
#' @source IPL 2022 player statistics dataset
#' @examples
#' data(ipl_high_performers)
#' head(ipl_high_performers)
"ipl_high_performers"

#' Launch the IPL Auction Shiny App
#'
#' This function launches the Shiny app for exploring IPL 2022 player performance data.
#' The app allows users to filter players by team and metrics such as Batting Average,
#' Strike Rate, Bowling Average, and Economy Rate, useful for IPL auction strategy.
#'
#' @return Launches the Shiny app in a browser window.
#' @examples
#' # To launch the Shiny app:
#' launch_app()
#' @export
launch_app <- function() {
  app_dir <- system.file("shinyapp", package = "Ipl")
  shiny::runApp(app_dir, display.mode = "normal")
}
