# This is the server logic for a Shiny web application.

minx <- min(movies$rating)
maxx <- max(movies$rating)

shinyServer(function(input, output) {
    
        output$rating_plot <- renderPlotly({
        # size of the bins depend on the input 'bins'
        size <- (maxx - minx) / input$bins
        
        
        # a simple histogram of movie ratings
        p <- plot_ly(movies, x = movies$rating, autobinx = F, type = "histogram",
                     xbins = list(start = minx, end = maxx, size = size))
             #add_trace(p, x=c(5,5), y=c(0,8000), type="scatter", mode="lines", name="Your movie")
        
        # style the xaxis
        layout(p, xaxis = list(title = "Ratings", range = c(minx, maxx), autorange = F,
                               autotick = F, tick0 = minx, dtick = size))
    })
    
    output$movie_rating <- renderText({
        if (input$movie_rating != "") {
            if (input$movie_rating > mean(movies$rating)) {
                abovebelow = "above"
            } else {
                abovebelow = "below"
            }
            sprintf("Your movie rated %s is %s the mean movie ratings of %s.", input$movie_rating, abovebelow, format(mean(movies$rating), digits=3))
        }
    })
})