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

