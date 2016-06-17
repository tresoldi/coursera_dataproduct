library(shiny)

shinyUI(
  pageWithSidebar(
    # application title
    headerPanel("Heat Load prediction", windowTitle='Heat Load prediction'),

    sidebarPanel(
      h5('This Shiny Web-App allows you to quickly estimate the heat load for air conditioning in a home enviroment in Brazil, based in a popular rule-of-thumb used in the country. When informing the area in square meters in the numeric input below, the result is reactively (i.e., automatically) updated in the right. It is not intended for serious use, but demonstrates how to write a simple Shiny Web Application. The sourcecode for the application is hosted on GitHub, at https://github.com/tresoldi/coursera_dataproduct'),
      numericInput('area', 'Area in m2', 20, min=5, max=200, step=1)
    ),
    
    mainPanel(
      h3('Results of prediction'),
      h4('You entered an area in square meters of'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a heat load prediction in BTUs of '),
      verbatimTextOutput("prediction")
    )
    
  )
)