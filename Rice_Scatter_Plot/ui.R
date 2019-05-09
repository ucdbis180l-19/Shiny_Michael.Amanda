#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Rice Data"),
  helpText("This application creates a scatterplot to show relationships between",
           "rice seed and plant characteristics.  Please use the radio boxes below to choose two traits to plot",
           "and an additional parameter to color"),
  
 
  sidebarLayout(
    sidebarPanel(
       
      radioButtons("Option_1",
                   "Choose Seed Trait:",
                   c("`Seed length`",
                     "`Seed width`",
                     "`Seed volume`")),
    
      radioButtons("Option_2",
                   "Choose Plant Trait:",
                   c("`Amylose content`",
                     "`Plant height`",
                     "`Panicle length`")),
      sliderInput("Slide",
                  "Choose cutoff:",
                  0,
                  50,
                  "`Amylose content`"),
      
      radioButtons("Color", #the input variable that the value will go into
                   "Choose additional parameter (color):",
                   c("Region",
                     "`Panicle fertility`",
                     "`Brown rice surface area`"
                   )
      
      )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("scatterPlot")
    )
  )
))
