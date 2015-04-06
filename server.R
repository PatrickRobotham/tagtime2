library(DT)
shinyServer(function(input, output, session) {
  myDf = data.frame(time=c(),number=c())
  session$df = myDf
  
  updateDf <- eventReactive(input$button,{
    session$df <- rbind(session$df,data.frame(time = Sys.time(),
                                              activity = input$x))
  })
  output$table <- renderDataTable({
    updateDf()
    datatable(session$df)
  })
  
})