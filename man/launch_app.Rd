% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Ipl.R, R/launch_app.R
\name{launch_app}
\alias{launch_app}
\title{IPL High Performers Dataset}
\format{
A data frame with 7 variables:
\describe{
\item{Name}{Player's name}
\item{Team}{Team the player represents}
\item{BattingAVG}{Batting average}
\item{BattingS/R}{Strike rate (runs per 100 balls)}
\item{BowlingAVG}{Bowling average (runs conceded per wicket)}
\item{EconomyRate}{Economy rate (runs conceded per over)}
\item{RunsScored}{Total runs scored by the player}
\item{Wickets}{Total wickets taken by the player}
}
}
\source{
IPL 2022 player statistics dataset
Launch the IPL Auction Shiny App

This function launches the Shiny app for exploring IPL 2022 player performance data.
The app allows users to filter players by team and metrics such as Batting Average,
Strike Rate, Bowling Average, and Economy Rate, useful for IPL auction strategy.
}
\usage{
launch_app()

launch_app()
}
\value{
Launches the Shiny app in a browser window.
}
\description{
The \code{ipl_high_performers} dataset includes batting and bowling statistics
of high-performing IPL players, focusing on those with over 3000 runs or over 90 wickets.
This dataset helps in analyzing players who contribute significantly to their teams.

This function launches the Ipl player performace Shiny app, which allows users to explore
player performance patterns based on various parameters like strike rate, economy rate etc. The app provides interactive visualizations for analyzing
their performances.

The Shiny app is located inside the package and can be launched using this function.
It uses pre-processed player data (⁠ipl_high_performersd ⁠) to generate the visualizations.
}
\details{
When the ⁠ launch_app() ⁠ function is called, it loads and runs the Shiny app located
inside the package's "shinyapp" directory. The app includes inputs for selecting team and player type
and provides  plots to visualize the parameter correlation.
}
