#' Launch the IPL Auction Shiny App
#'
#' This function launches the Shiny app for exploring IPL 2022 player performance data.
#'
#' @return Launches the interactive Shiny app in a browser window.
#' The app allows users to filter players by team and performance metrics.
#' @examples
#' # To launch the Shiny app:
#' launch_app()
#' @export
launch_app <- function() {
  shiny::runApp(system.file("shiny", package = "Ipl"))
}





