#'@title Summarize one-way ANOVA results
#'
#'@description
#'\code{summarize.oneway} summarizes the results of one-way ANOVA
#'
#'@details
#'This function prints the ANOVA table from the linear model.
#'
#'@param x an object of class \code{oneway}
#'@param ... additional arguments passed to the
#'\code{\link{print}} function.
#'
#'@export
#'
#'@return the input object is returned silently
#'
#'@author Chris Russo <crusso@@wesleyan.edu>
#'
#'@examples
#'mileage <- oneway(hwy ~ class, cars)
#'summary(mileage)

summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}
