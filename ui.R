library(shiny)
shinyUI(pageWithSidebar(
        
        # Application title
        headerPanel('Milles Per Gallon (MPG) calculator'),
        
        # Sidebar with a slider input for celsius degrees
        sidebarPanel(
            h4('This is a MPG calculator based on gross horsepower and weight just choose values for those variables and see the result'),        
                sliderInput("hp", 
                            "hp Gross horsepower:", 
                            min = 52,
                            max = 335, 
                            value = 100.0),
                sliderInput("wt", 
                            "Weight (lb/1000):", 
                            min = 1.5,
                            max = 5.4, 
                            value = 2.0)   
        ),
        mainPanel(
                h3('Estimated MPG:'),
                h3(textOutput("otout"))
                )
))