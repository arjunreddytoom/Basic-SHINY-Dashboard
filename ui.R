
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(plotly)
library(shinythemes)
library(shiny)
library(shinydashboard)
library(treemap)
library(gridBase)
library(dplyr)

dashboardPage(
  dashboardHeader(title = tags$a(href='', tags$img(src='',height = '22px', width = '160px')),
                  dropdownMenuOutput("messages.type"),
                  dropdownMenuOutput("notifications.type"),
                  dropdownMenuOutput("tasks.type")
  ),
  dashboardSidebar(
    sidebarMenu(
      id = "tabs",
      # menuItem("Team", tabName = "team", icon = icon("user-circle")),
      menuItem("Opening", tabName = "opening-slide", icon = icon("th")),
      menuItem("Analysis", tabName = "data-explore", icon = icon("wpexplorer")),
      menuItem("Focus", tabName = "marketing-report", icon = icon("bar-chart")),
      menuItem("Target", tabName = "analysis", icon = icon("area-chart"),
               menuSubItem("Target 1",tabName = "analysis1"),
               menuSubItem("Target 2",tabName = "analysis2")),
      menuItem("Predictions", tabName = "widgets", icon = icon("hand-spock-o"),
               menuSubItem("Model 1",tabName = "model1"),
               menuSubItem("Model 2",tabName = "model2"),
               menuSubItem("Model 3",tabName = "model3")),
      menuItem("Recommendations", tabName = "recommendations", icon = icon("commenting")),
      menuItem("", tabName = "team", icon = icon("group"))
    )
  ),
  dashboardBody(
    tags$head(
      tags$link(rel = "fabletics", type = "png", href = "fabletics.png"),
      tags$title("Fabletics")
    ),
    tabItems(
      tabItem("opening-slide",
              fluidRow(
                box(
                  title = "Welcome to your Analytics Dashboard",
                  status = "primary",
                  width = 12,
                  div(img(
                    src = "",
                    height = 530,
                    width = 1000
                  ), style="text-align: center;"),
                  h4("by Arjun Reddy")
                )
              )
      ),
      tabItem("data-explore",
              box(width = 10,title = 'Exploring the Data',
                  helpText('Exploring the data - Description here')
              )
      ),
      
      tabItem("analysis",
              box(width = 10,title = 'Analysis',
                  helpText('Data Analysis')
              )
      ),
      tabItem("analysis1",
              box(width = 5,title = 'Analysis 1',
                  helpText('All the analysis 1 related stuff goes in here')
              )
      ),
      tabItem("analysis2",
              box(width = 5,title = 'Analysis 2',
                  helpText('All the analysis 2 related stuff goes in here')
              )
      ),
      tabItem("analysis3",
              box(width = 5,title = 'Analsysis 3',
                  helpText('All the analysis 3 related stuff goes in here')
              )
      ),
      tabItem("model1",
              box(width = 5,title = 'Model 1',
                  helpText('All the model 1 related stuff goes in here')
              )
      ),
      tabItem("model2",
              box(width = 5,title = 'Model 2',
                  helpText('All the model 2 related stuff goes in here')
              )
      ),
      tabItem("model 3",
              box(width = 5,title = 'Model 3',
                  helpText('All the model 3 related stuff goes in here')
              )
      ),
      tabItem("recommendations",
              box(width = 5,title = 'Recommendations',
                  helpText('All the recommendations are here'),
                  helpText('Recommendation 1'),
                  helpText('Recommendation 2'), 
                  helpText('Recommendation 3'),
                  helpText('Recommendation 4'),
                  helpText('Recommendation 5')
              )
      )
    )
  ),
  skin = "black"
)