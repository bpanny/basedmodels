
if (!requireNamespace("R6", quietly = TRUE)) {
  install.packages("R6")
}
library(R6)

# Define World class
World <- R6Class("World",
                 public = list(
                   width = NULL,
                   height = NULL,
                   space = NULL,
                   currentTime = NULL,

                   initialize = function(widthc, heightc) {
                     self$width <- widthc
                     self$height <- heightc
                     self$space <- matrix(0, nrow = widthc, ncol = heightc)
                     self$currentTime <- 0
                   },

                   getDimensions = function() {
                     return(list(width = self$widthc, height = self$heightc))
                   },

                   getCurrentTime = function() {
                     return(self$currentTime)
                   },

                   update = function() {
                     self$currentTime <- self$currentTime + 1
                   }
                 )
)


