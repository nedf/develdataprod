library(shiny)
shinyUI (
  fluidPage (
    titlePanel("Exploring the Air Quality dataset"),
    h5 ("This Shiny App allows the user to explore the Air Quality dataset and relationships within the dataset"),
    sidebarLayout (
      # inputs
      sidebarPanel (

        selectInput ("x", label = "Covariate", selected = "Ozone", choices = names (airquality)),

        selectInput ("y", label = "Outcome", selected = "Solar.R", choices = names (airquality)),

        selectInput ("smoother", label = "Smoother", selected = "loess", choices = list ("loess", "lm", "glm", "gam"))
      ),

      mainPanel(
        plotOutput("plot")
      )
    )
  )
)
