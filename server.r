library(shiny)

# randomly select a number between 1 and 100
number <- ceiling( runif(n=1, min=0, max=100) )

shinyServer( 
        function(input, output) {
                output$outputValue <- renderText( guessed( as.numeric(input$guess), number) )
        }
)

guessed <- function(guess, number) {
        returnValue <- 'Guess a number between 1 and 100.'
        if (guess < 1 || guess > 100) {
                returnValue 
        }
        else if (guess > number) {
                returnValue <- 'Too high.'
        }
        else if (guess < number) {
                returnValue <- 'Too low.'
        }
        else if (guess == number) {
                returnValue <- 'Right!'
        }
        returnValue
}

