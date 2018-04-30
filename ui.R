library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing the Hypergeometric Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("M",
                  "Number of white balls:",
                  min = 1,
                  max = 15,
                  step = 1,
                  value = 10),
      sliderInput("N",
                  "Number of black balls:",
                  min = 1, 
                  max = 15,
                  step = 1,
                  value = 5),
      sliderInput("K",
                  "Number of draws (without replacement):",
                  min = 1, 
                  max = 20,
                  step = 1,
                  value = 3)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
