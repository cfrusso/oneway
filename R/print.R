#'@title Print one-way ANOVA results
#'
#'@description
#'\code{print.oneway} print one-way ANOVA results
#'
#'@details
#'This function prints one-way ANOVA results create by the
#'\code{\link{oneway}} function.
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
#'mileage







print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n", 
      "====================================================\n", sep="")
  print(x$summarystats)
  cat("\nAnova\n", 
      "====================================================\n", sep="")
  print(summary.lm(x$anova))
}