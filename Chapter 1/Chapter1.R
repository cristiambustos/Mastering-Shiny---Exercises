library("shiny")

ui <- fluidPage(
    selectInput("dataset", label = "Dataset", choices = ls(package:datasets)),
    verbatimTextOutput("summary"),
    tableOutput("table")
)

server <- function(input, output, session) {
  dataset <- reactive({
    dataset <- get(input$dataset, "package:datasets")
    
  })
  output$summary <- renderPrint({
    summary(dataset())
  })
  output$table <- renderTable({
    dataset()
  })
}

shinyApp(ui = ui, server = server)
