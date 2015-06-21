# Load Libraries and Dataset
require(datasets)
data(mtcars)
require(stats)
library(ggplot2)

# Load Model
mpgVal <- function(weight, gross_horsepower, am){ 
  
  if(am == "0"){30.94  - 0.027 * gross_horsepower - 2.51 * weight}
        else   {30.94 + 11.55 - 0.027 * gross_horsepower - 2.51 * weight - 3.57 * weight}  
}

shinyServer(
  function(input, output) {
   output$input_weight <- renderPrint({input$weight})
   output$input_gross_horsepower <- renderPrint({input$gross_horsepower})
   output$input_am <- renderPrint({input$am})
   output$prediction <- renderPrint({mpgVal(input$weight, input$gross_horsepower, input$am)})
  }
)