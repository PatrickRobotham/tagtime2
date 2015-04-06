library(DT)
shinyUI(fluidPage(
  fluidPage(
    column(4,
           textInput("x", "What are you working on?", "Slacking Off"),
           br(),
           actionButton("button", "Add")
    ),
    column(8, dataTableOutput("table"))
  )))