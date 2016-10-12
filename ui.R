# This is the user-interface definition of a Shiny web application.

library(shiny)
library(plotly)
library(ggplot2movies)  # Needed for the 'movies' data set

require(markdown)

shinyUI(
    navbarPage("Movie Rating Histogram",
               tabPanel("Movies Histogram",
                        sidebarPanel(
                            numericInput("movie_rating", label = "Enter your movie's rating", value=5),
                            sliderInput("bins", "Number of histogram bins:", min = 1, max = 40, value = 20)
                        ),
                        mainPanel(
                            h1("The Movie Ratings"),
                            h2(textOutput('movie_rating')),
                            plotlyOutput("rating_plot")
                        )
                        
                        ),
               tabPanel("Documentation",
                        mainPanel(
                            includeMarkdown("documentation.md"))
                        )
               )
    # fluidPage(
    # titlePanel("Find out where your movie rating stands..."),
    )

