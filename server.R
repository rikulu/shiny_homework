library(shiny)
library(datasets)

mydata <- iris
# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {

  # Show the first "n" observations
  output$view <- renderTable({
    head(mydata, n = input$obs)
  })
  
  # Generate a plot of the requested variables
  output$plot <- renderPlot({
    head(mydata, n = input$obs)
    plot(iris$Sepal.Length, iris$Sepal.Width)
  })
})
