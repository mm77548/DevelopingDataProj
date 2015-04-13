
library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Hypotenuse Calculator with Pythagorean Theorem"),
    
    sidebarPanel(
      
      numericInput('a', 'Side a', 3, min = 1, max = 100000, step = 5),
      numericInput('b', 'Side b', 4, min = 1, max = 100000, step = 5),
      #numericInput('data called in server', 'label', default value, min = 50, max = 200, step = 5 - updown arrow keys),
      submitButton('Submit')
    ),
    mainPanel(
      h3('You Entered:'),
      h4('Side a'),
      verbatimTextOutput("inputValue1"),
      h4('Side b'),
      verbatimTextOutput("inputValue2"),
    
      h4('a^2 + b^2 = c^2'),
      h4('Which resulted in a hypotenuse of '),
      verbatimTextOutput("hypotenuse")
    )
  )
)
