#' IPL High Performers Dataset
#'
#' This dataset contains IPL 2022 players who have achieved significant performance
#' benchmarks, either scoring over 3000 runs or taking more than 90 wickets across IPL seasons.
#' It is intended to be used for analyzing key batting and bowling metrics
#' for strategic purposes, including IPL auction strategies.
#'
#' @format A data frame with filtered IPL player statistics. The key columns in the dataset are:
#' \describe{
#'   \item{Name}{The full name of the player.}
#'   \item{Surname}{The surname of the player, extracted from the full name.}
#'   \item{Team}{The IPL team that the player is a part of.}
#'   \item{RunsScored}{The total number of runs scored by the player.}
#'   \item{Wickets}{The total number of wickets taken by the player.}
#'   \item{BattingAVG}{The player's batting average (runs per innings).}
#'   \item{BattingS/R}{The player's strike rate (runs per 100 balls faced).}
#'   \item{BowlingAVG}{The player's bowling average (runs conceded per wicket).}
#'   \item{EconomyRate}{The player's bowling economy rate (runs conceded per over).}
#' }
#'
#' @source IPL 2022 Player Statistics Dataset
#'
#' @examples
#' # Load the data
#' data("ipl_high_performers", package = "Ipl")
#'
#' # View the first few rows of the dataset
#' head(ipl_high_performers)
#'
#' # Filter for top-performing batsmen
#' top_batsmen <- ipl_high_performers %>%
#'   filter(RunsScored > 3000)
#'
#' # Filter for top-performing bowlers
#' top_bowlers <- ipl_high_performers %>%
#'   filter(Wickets > 90)
"ipl_high_performers"

# Load necessary libraries
library(tidyverse)

# Load the raw IPL data
ipl_data <- readr::read_csv("data-raw/IPL_Data_2022.csv")

# Filter data: Players with more than 3000 runs or more than 90 wickets
ipl_high_performers <- ipl_data %>%
  mutate(Surname = sub(".*\\s", "", Name)) %>%  # Extract surname from the Name column
  filter(RunsScored > 3000 | Wickets > 90)  # Filter players based on runs and wickets

# View the filtered dataset (optional)
View(ipl_high_performers)

# Save the cleaned and filtered data into the package's data folder
usethis::use_data(ipl_high_performers, overwrite = TRUE)

