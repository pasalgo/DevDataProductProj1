library(shiny)

library(UsingR)
data(mtcars)
lm <- lm(mpg~ wt+hp,data=mtcars)

shinyServer(function(input, output) { 
     
        output$otout <- renderText({
                        paste(lm$coefficients[1]+lm$coefficients[2]*input$wt+lm$coefficients[3]*input$hp,"MPG",sep=' ')
                })
      
})