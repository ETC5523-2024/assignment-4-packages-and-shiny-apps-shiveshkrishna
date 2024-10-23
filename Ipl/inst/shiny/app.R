library(shiny)
library(tidyverse)

# Load the cleaned IPL data from the package
data("ipl_high_performers", package = "Ipl")

# Define the UI for the app
ui <- fluidPage(
  titlePanel("IPL Auction Strategy Explorer"),
  sidebarLayout(
    sidebarPanel(
      selectInput("player_type", "Player Type:", choices = unique(ipl_high_performers$Type)),
      selectInput("team", "Team:", choices = unique(ipl_high_performers$Team))
    ),
    mainPanel(
      tableOutput("player_table")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  output$player_table <- renderTable({
    ipl_high_performers %>%
      filter(Type == input$player_type, Team == input$team)
  })
}

# Create and return the Shiny app object
shinyApp(ui = ui, server = server)
