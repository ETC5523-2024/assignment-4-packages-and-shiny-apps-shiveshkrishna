# Load necessary libraries for the Shiny app
library(shiny)
library(tidyverse)
library(ggrepel)  # For better label placement
library(shinythemes)

# Load the cleaned IPL data from the package
data("ipl_high_performers", package = "Ipl")

# Define the user interface (UI) for the Shiny app
ui <- fluidPage(
  theme = shinytheme("cerulean"),  # Apply a theme for improved styling
  titlePanel("IPL Auction Strategy Explorer"),  # App title panel

  sidebarLayout(
    sidebarPanel(
      h3("Player Filters"),
      selectInput("player_type", "Player Type:", choices = c("Batsman", "Bowler")),
      selectInput("team", "Team:", choices = c("All", unique(ipl_high_performers$Team))),  # Add "All" Option

      h3("Understanding the Filters"),
      p("Use the filters to explore the performance of batsmen and bowlers across different IPL teams."),
      p("Player Type: Select whether you want to explore data for batsmen or bowlers."),
      p("Team: Filter the players by team or choose 'All' to see data from all teams.")
    ),

    mainPanel(
      plotOutput("performance_plot"),  # Show the performance plot
      h3("How to Interpret the Scatter Plot"),
      p("This scatter plot provides insights into key performance metrics for IPL players. Each point represents a player, and larger bubbles indicate more runs (for batsmen) or more wickets (for bowlers)."),
      p("For batsmen, the X-axis represents the Batting Average, while the Y-axis shows the Strike Rate. Ideally, you want players with a high strike rate, as it indicates they score quickly, which is crucial in T20 cricket."),
      p("For bowlers, the X-axis represents the Bowling Average, and the Y-axis shows the Economy Rate. Lower economy rates are preferable because they reflect a bowler’s ability to limit runs. A low bowling average, combined with a low economy rate, signals a highly effective bowler."),
      p("Use these insights to understand how player performance metrics can influence IPL auction strategies and team selections.")
    )
  )
)

# Define the server-side logic for the Shiny app
server <- function(input, output) {
  # Reactive expression: Filter data based on input for player type and team
  filtered_data <- reactive({
    if (input$player_type == "Batsman") {
      filtered_ipl <- ipl_high_performers %>%
        filter(RunsScored > 3000)  # Filter for batsmen with over 3000 runs
    } else {
      filtered_ipl <- ipl_high_performers %>%
        filter(Wickets > 90)  # Filter for bowlers with over 90 wickets
    }

    # Filter by team if a specific team is selected (not "All")
    if (input$team != "All") {
      filtered_ipl <- filtered_ipl %>%
        filter(Team == input$team)
    }

    return(filtered_ipl)
  })

  # Render the appropriate plot based on the player type and team
  output$performance_plot <- renderPlot({
    data <- filtered_data()

    # Generate scatter plot for batsmen
    if (input$player_type == "Batsman") {
      ggplot(data, aes(x = BattingAVG, y = `BattingS/R`, label = Surname)) +
        geom_point(aes(color = RunsScored, size = RunsScored), alpha = 0.7) +
        geom_text_repel(size = 3, box.padding = 0.5, point.padding = 0.5, segment.color = 'grey50') +
        scale_color_gradient(low = "blue", high = "red") +
        scale_size(range = c(3, 8)) +
        labs(
          x = "Batting Average",
          y = "Strike Rate",
          title = "Batting Average vs Strike Rate for Batsmen with Over 3000 Runs",
          subtitle = "Larger and more intense circles represent higher runs scored",
          caption = "Data source: IPL 2022 player statistics"
        ) +
        theme_minimal() +
        theme(
          axis.text.x = element_text(angle = 45, hjust = 1),
          plot.title = element_text(face = "bold", size = 12),
          plot.subtitle = element_text(size = 10, color = "gray50"),
          plot.caption = element_text(size = 8, color = "gray60")
        )

    } else {  # Generate scatter plot for bowlers
      ggplot(data, aes(x = BowlingAVG, y = EconomyRate, label = Surname)) +
        geom_point(aes(color = Wickets, size = Wickets), alpha = 0.7) +
        geom_text_repel(size = 3, box.padding = 0.5, point.padding = 0.5, segment.color = 'grey50') +
        scale_color_gradient(low = "blue", high = "red") +
        scale_size(range = c(3, 8)) +
        labs(
          x = "Bowling Average",
          y = "Economy Rate",
          title = "Bowling Average vs Economy Rate for Bowlers with Over 90 Wickets",
          subtitle = "Larger and more intense circles represent more wickets taken",
          caption = "Data source: IPL 2022 player statistics"
        ) +
        theme_minimal() +
        theme(
          axis.text.x = element_text(angle = 45, hjust = 1),
          plot.title = element_text(face = "bold", size = 12),
          plot.subtitle = element_text(size = 10, color = "gray50"),
          plot.caption = element_text(size = 8, color = "gray60")
        )
    }
  })
}

# Create and return the Shiny app object
shinyApp(ui = ui, server = server)
