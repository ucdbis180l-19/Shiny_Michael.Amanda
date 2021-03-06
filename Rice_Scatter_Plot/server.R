
library(shiny)
library(ggplot2)
library(tidyverse)
library(rsconnect)

<<<<<<< HEAD
Rice_data<-read_csv("RiceDiversity.44K.MSU6.Phenotypes.csv")
                    
=======
Rice_data <- read_csv("./RiceDiversity.44K.MSU6.Phenotypes.csv")

>>>>>>> b7ae15c33a0b2546fe9158a57ecd6318948e7fcd

# Define server logic required to draw a boxplot
shinyServer(function(input, output) {
  
  # Expression that generates a boxplot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$scatterPlot <- renderPlot({
    
    
    # set up the plot
    pl <- ggplot(data = Rice_data %>% filter(`Amylose content` <= input$Slide),
                 #Use aes_string below so that input$trait is interpreted
                 #correctly.  The other variables need to be quoted
                 aes_string(x=input$Option_1,
                            y=input$Option_2,
                            color=input$Color
                            
                            
                            
                 )
    )
    
    # draw the boxplot for the specified trait
    pl + geom_point()
  })
})