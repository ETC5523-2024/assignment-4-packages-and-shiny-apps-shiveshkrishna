## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE,
  echo = TRUE
)

## -----------------------------------------------------------------------------
#  library(Ipl)
#  library(tidyverse)
#  library(ggrepel)

## -----------------------------------------------------------------------------
#  # Launch the IPL Shiny app
#  #launch_app()

## -----------------------------------------------------------------------------
#  # Load the cleaned IPL dataset
#  data("ipl_high_performers", package = "Ipl")
#  
#  # View the first few rows of the dataset
#  head(ipl_high_performers)

## -----------------------------------------------------------------------------
#  # Filter for players who scored more than 3000 runs
#  top_batsmen <- ipl_high_performers %>%
#    filter(RunsScored > 3000)
#  
#  # View the first few top-performing batsmen
#  head(top_batsmen)

## -----------------------------------------------------------------------------
#  # Load necessary libraries
#  library(ggplot2)
#  library(ggrepel)
#  
#  # Filter for top-performing batsmen with more than 3000 runs
#  top_batsmen <- ipl_high_performers %>%
#    filter(RunsScored > 3000)
#  
#  # Create a scatter plot of Batting Average vs Strike Rate
#  ggplot(top_batsmen, aes(x = BattingAVG, y = `BattingS/R`, label = Surname)) +
#    geom_point(aes(color = RunsScored, size = RunsScored), alpha = 0.7) +
#    geom_text_repel(size = 3, box.padding = 0.5, point.padding = 0.5) +
#    scale_color_gradient(low = "blue", high = "red") +
#    scale_size(range = c(3, 8)) +
#    labs(
#      x = "Batting Average",
#      y = "Strike Rate",
#      title = "Batting Average vs Strike Rate for Batsmen with Over 3000 Runs",
#      subtitle = "Larger and darker bubbles represent higher runs scored",
#      caption = "Data source: IPL 2022 player statistics"
#    ) +
#    theme_minimal() +
#    theme(
#      axis.text.x = element_text(angle = 45, hjust = 1),
#      plot.title = element_text(face = "bold", size = 12),
#      plot.subtitle = element_text(size = 10, color = "gray50"),
#      plot.caption = element_text(size = 8, color = "gray60")
#    )

## ----eval=FALSE---------------------------------------------------------------
#  # Filter for top-performing bowlers with more than 90 wickets
#  top_bowlers <- ipl_high_performers %>%
#    filter(Wickets > 90)
#  
#  # Create a scatter plot of Bowling Average vs Economy Rate
#  ggplot(top_bowlers, aes(x = BowlingAVG, y = EconomyRate, label = Surname)) +
#    geom_point(aes(color = Wickets, size = Wickets), alpha = 0.7) +
#    geom_text_repel(size = 3, box.padding = 0.5, point.padding = 0.5) +
#    scale_color_gradient(low = "blue", high = "red") +
#    scale_size(range = c(3, 8)) +
#    labs(
#      x = "Bowling Average",
#      y = "Economy Rate",
#      title = "Bowling Average vs Economy Rate for Bowlers with Over 90 Wickets",
#      subtitle = "Larger and darker bubbles represent more wickets taken",
#      caption = "Data source: IPL 2022 player statistics"
#    ) +
#    theme_minimal() +
#    theme(
#      axis.text.x = element_text(angle = 45, hjust = 1),
#      plot.title = element_text(face = "bold", size = 12),
#      plot.subtitle = element_text(size = 10, color = "gray50"),
#      plot.caption = element_text(size = 8, color = "gray60")
#    )

