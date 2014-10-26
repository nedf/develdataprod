library (shiny)
library (ggplot2)
shinyServer (
  function (input, output) {
    output$plot <- renderPlot (
      {
        ggplot (airquality, aes_string (input$x, input$y)) + 
          geom_point() + geom_smooth (method = input$smoother)
      }
    )
  }
)
