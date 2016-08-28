#procedures for improve to permance of ui app

#shiny app
library(shiny)
#set for example
library(datasets)


shinyServer(function(input, output) {
  output$carsPlot <- renderPlot({
    if (input$pvar=='hi') {
    hist(mtcars[,input$variable],
         main = "Histogram of mtcars variables",
         xlab = input$variable)
    }
    if (input$pvar=='ln') {
      plot(mtcars[,input$variable],
           main="Lines Plot",
           col="light blue",
           type="l")
    }
    if (input$pvar=='po') {
      plot(mtcars[,input$variable],
           main="Lines Plot",
           col="purple",
           type="p")
    }   
    if (input$pvar=='co') {
      plot(mtcars[,input$variable],
           main="Lines Plot",
           col="purple",
           type="b")
    }    
  })
  output$carsSummary <- renderPrint({
    summary(mtcars[,input$variable])
  })
  output$carsTableData <- renderPrint({
    head(mtcars[,input$variable],50)
  })
  output$carsModel <- renderPrint({
    lm(as.formula(paste(input$variable," ~ ",paste(".",collapse="+"))),data=mtcars)    
  })
})