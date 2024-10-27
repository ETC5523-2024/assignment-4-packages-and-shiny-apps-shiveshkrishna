#' Launch the Ipl player performance Shiny App
#'
#' @description
#' This function launches the Ipl player performace Shiny app, which allows users to explore
#' player performance patterns based on various parameters like strike rate, economy rate etc. The app provides interactive visualizations for analyzing
#' their performances.
#'
#' The Shiny app is located inside the package and can be launched using this function.
#' It uses pre-processed player data (⁠ipl_high_performersd ⁠) to generate the visualizations.
#'
#' @details
#' When the ⁠ launch_app() ⁠ function is called, it loads and runs the Shiny app located
#' inside the package's "shinyapp" directory. The app includes inputs for selecting team and player type
#'and provides  plots to visualize the parameter correlation.
#'
#'
#' @export
launch_app <- function() {
  app_dir <- system.file("shinyapp", package = "Ipl")
  shiny::runApp(app_dir, display.mode = "normal")
}
