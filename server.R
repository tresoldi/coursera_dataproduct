library(shiny)

heatloadPred <- function(area) (area / 20) * 12000

shinyServer(
  function(input, output) {
    x <- reactive({as.numeric(input$area)})
    output$inputValue <- renderPrint({x()})
    output$prediction <- renderPrint({heatloadPred(x())})
  }
)