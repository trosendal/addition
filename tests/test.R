## A number of tests to evaluate the validity of the functions in the package

library(addition)

## Test 1 a valid use of the function
res <- add(1, 2)
stopifnot(res == 3)

## Test 2 a non-numeric argument in the first position
rm(list = ls())
res <- tools::assertError(
    add("a", 2)
)
stopifnot(length(grep("The first argument to the function must be numeric",
                      res[[1]]$message)) > 0)

## Test 3 a non-numeric argument in the first position
rm(list = ls())
res <- tools::assertError(
    add(2, "a")
)
stopifnot(length(grep("The second argument to the function must be numeric",
                      res[[1]]$message)) > 0)

## Test 4 a NULL argument in the first position
rm(list = ls())
res <- tools::assertError(
    add(NULL, 1)
)
stopifnot(length(grep("The first argument to the function must be numeric",
                      res[[1]]$message)) > 0)

## Test 5 a NULL argument in the second position
rm(list = ls())
res <- tools::assertError(
    add(2, NULL)
)
stopifnot(length(grep("The second argument to the function must be numeric",
                      res[[1]]$message)) > 0)
