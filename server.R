library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  #plot output
  output$distPlot <- renderPlot({
    x    <- 1:20
    probs <- dhyper(x, input$M, input$N, input$K)
    qplot(x, probs, geom = c("point", "line"), ylab = "probability", ylim = c(0, 0.75),
         main = "Probability of drawing exactly x white balls")
  })
})
