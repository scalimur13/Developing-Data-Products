#this ins my first app prod in Shiny app
#the works corresponds at coursera project Development Data Products
#for mor information about shiny on
#http://www.rstudio.com/shiny/

library(shiny)
shinyUI(pageWithSidebar(
  titlePanel("Developing Data Products Project - Mtcars"),
  sidebarPanel(
    selectInput(inputId = "variable",
                label = "Variable:",
                choices = c("Horsepower" = "hp",
                            "Miles per Gallon" = "mpg",
                            "Number of Carburetors" = "carb",
                            "Cylinders"="cyl",
                            "Displacement"="disp",
                            "Rear axle ratio"="drat",
                            "Weight (1000 lbs)"="wt",
                            "1/4 mile time"="qsec",
                            "V/S"="vs",
                            "Transmission"="am",
                            "Number of forward gears"="gear"                            ),
                selected = "hp"),
    column(3,
           wellPanel(
             radioButtons(
               "pvar",
               "Choice a Plot:",
               c("Histogram" = "hi",
                 "Lines" = "ln",
                 "Points" ="po",
                 "Combinated"="co"))
           )
    )
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", plotOutput("carsPlot")),
      tabPanel("Summary", verbatimTextOutput("carsSummary")),
      tabPanel("Model test", verbatimTextOutput("carsModel")),      
      tabPanel("Head of Data", verbatimTextOutput("carsTableData")),
      tabPanel("Readme", includeMarkdown("readme.Rmd"))
    )
  )
))