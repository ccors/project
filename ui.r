library(shiny)

shinyUI( 
        pageWithSidebar(

                headerPanel("Guess the number"),
        
                sidebarPanel(
                        textInput('guess', 'Number', value = "0"),
                        submitButton('Submit')
                ), 
                mainPanel(
                        h1('Guess a number between 1 and 100'),
                        h2('The number is an integer between 1 and 100 (inclusives)'),
                        verbatimTextOutput("outputValue")
                )
        )
)