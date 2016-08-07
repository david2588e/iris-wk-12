library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    bins <- input$bins
    x<-iris$Sepal.Length[1:bins]
    y<-iris$Sepal.Width[1:bins] 
    
   plot(y~x,
    col = "red",
    lwd = 8,
    xlab="Sepal.Length",
    ylab = "Sepal.Width")
  })

})
