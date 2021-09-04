#!/usr/bin/env bash

module load conda_R
cd jhpce-script-examples/simulation_study_with_varying_sample_size
mkdir -p "${HOME}/simulation_result" # Make a directory if non-existent
rscript_log_file_name="${HOME}/simulation_result/${job_name}_rscript_log.txt"
touch "$rscript_log_file_name" # Create the file if non-existent
echo "Starting ${job_name}..."
Rscript "run_${method_type}_method_on_simulated_data.R" $sample_size &> $rscript_log_file_name
