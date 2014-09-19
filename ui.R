library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing the Hypergeometric Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("N",
                  "Total number of balls:",
                  min = 1,
                  max = 20,
                  step = 1,
                  value = 10),
      sliderInput("M",
                  "Number of red balls:",
                  min = 1, 
                  max = 20,
                  step = 1,
                  value = 5),
      sliderInput("n",
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
