args <- commandArgs(trailingOnly = TRUE)

cat(paste0(
  "This script evaluates performance of an existing method on a ",
  "simulated data set of sample size n = ", args[1], ".\n"
))

simulation_result <- data.frame(run_time=rexp(1), mse=Inf)
filename <- file.path(
  path.expand("~/simulation_result"),
  sprintf("old_method_sim_result_with_%s_obs.csv", args[1])
)
write.csv(simulation_result, file=filename)
