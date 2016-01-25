##' Read in the sample data
##'
##' @title sampledata
##' @description Some data that is really interesting
##' @return a dataframe
##' @author Thomas Rosendal
##' @export
##'
sampledata <- function() {
    df <- read.csv2(system.file("extdata/data.csv", package = "addition"))
    return(df)
}
