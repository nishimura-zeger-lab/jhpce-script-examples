args <- commandArgs(trailingOnly = TRUE)

cat(paste0(
  "This script evaluates performance of your new exciting method on a ",
  "simulated data set of sample size n = ", args[1], ".\n"
))

stop("Except that it throws an error; too bad.")