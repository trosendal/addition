##' A function to add two numbers
##'
##' @title Add Two Numbers
##' @return a numeric value
##' @param a A number 
##' @param b A number
##' @export
##' @author Thomas Rosendal
add <- function (a, b) {
    ## test the validity of the arguments to the function
    if(!(is.numeric(a))) {
        stop("The first argument to the function must be numeric")
    }
    if(!(is.numeric(b))) {
        stop("The second argument to the function must be numeric")
    }
    ## The code to do the work itself
    result <-  a + b
    return(result)
}
