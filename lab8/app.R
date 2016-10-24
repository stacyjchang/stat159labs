library(shiny)



ui <- fluidPage(
  headerPanel('Simple Regression between Sales and Different Advertising Medium'),
  sidebarPanel(
    selectInput(inputId = "xcol",
                label = "X Vairable: Choose a medium",
                choices = c("TV", "Radio", "Newspaper"), selected = "TV")
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  ad <- read.csv("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
  
  
  output$plot1 <- renderPlot({
    plot(ad[, input$xcol], ad$Sales)
    abline(lm(ad$Sales ~ ad[, input$xcol]), col = "#0000DD59", lwd = 2)
    
  })
  
}

shinyApp(ui = ui, server = server)


