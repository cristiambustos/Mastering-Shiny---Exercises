library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "", min = 0, max = 100, value = 10, step = 5)
)

server <- function(input, output, session){
  
}

shinyApp(ui = ui, server = server)