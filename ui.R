#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(markdown)
shinyUI(navbarPage("Best Car For You",
                   tabPanel("Search",
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Provide your trip details:"),
                                numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000),
                                numericInput('cost', 'Gasoline Price (per Gallon):', 2.41, min = 2, max = 4, step=0.01),
                                numericInput('gas', 'Maximum Expenditure on Gasoline:', 50, min=1, max=1000),
                                checkboxGroupInput('cyl', 'Number of Cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                sliderInput('disp', 'Engine Displacement', min=70, max=480, value=c(70,480), step=10),
                                sliderInput('hp', 'Gross Horsepower', min=50, max=340, value=c(50,340), step=10),
                                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   )
))   