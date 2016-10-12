1. Movie Histogram Presentation
========================================================
author: Chee-Chan Keng
date: 12 October 2016
autosize: true

2. Introduction
========================================================

As part of the Coursera Data Products project, the assignment is to create a Shiny web application and then present the project in R presentation mode.

This presentation explains following in the Shiny web application:

- the histogram
- the analysis
- and the documentation 

Source code is uploaded to: [https://github.com/kengcc/movies]

3. The Histogram
========================================================

Shiny app will use plotly to display an interactive histogram at [https://kengcheechan.shinyapps.io/Movies/]. An example of the snapshot is shown here:

![plot of chunk unnamed-chunk-1](movie_presentation-figure/unnamed-chunk-1-1.png)

4. The Analysis
========================================================

User can choose enter their own movie''s rating and and see how the ratings fare here.

The example analysis is simple: 

If user enters 5, it will compare against the mean of movie ratings and display an evaluted analysis.


```r
cat("The movie mean = ", mean(movies$rating))
```

```
The movie mean =  5.93285
```

5. The Documentation
========================================================
Documentation is also published together with the Shiny app, it is accessible from the documentation tab.
