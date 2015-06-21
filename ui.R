shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("HEADER"),
    
    
    sidebarPanel(
      numericInput('weight','lb/1000', 3.2, min=1, max=6, step=0.1),
      numericInput('gross_horsepower', 100, min=50, max=300, step=1),
      radioButtons("am", "Radio Buttons",
                         c("Automatic" = "0",
                           "Manual" = "1")),
      submitButton('Submit')
    ),
    
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("input_weight"),
      h4('You entered'),
      verbatimTextOutput("input_gross_horsepower"),
      h4('You entered'),
      verbatimTextOutput("input_am"),
      h4('Which resulted in a prediction of'),
      verbatimTextOutput("prediction")
    )
    
  )
)