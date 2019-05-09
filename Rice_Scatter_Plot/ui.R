#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Data"),
  helpText("This application creates a boxplot to show difference between",
           "iris species.  Please use the radio box below to choose a trait",
           "for plotting"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       radioButtons("Trait_1", #the input variable that the value will go into
                   "Choose first trait:",
                   c("Plant height",
                     "Seed length",
                     "Flag leaf length"
                     )
    )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("boxPlot")
    )
  )
))
