library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    x    <- 1:20
    probs <- dhyper(x, input$M, input$N - input$M, input$n)
    qplot(x, probs, geom = c("point", "line"), ylab = "p(x)", ylim = c(0, 1))

  })

})
