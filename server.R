library(shiny)

pythag_thrm <- function(a, b) {
  
  sqrt(a^2 + b^2)
  
}


shinyServer(
  
  function(input, output) {
    output$inputValue1 <- renderPrint({input$a})
    output$inputValue2 <- renderPrint({input$b})

    output$hypotenuse <- renderPrint({pythag_thrm(input$a, input$b)})
    
  }
)