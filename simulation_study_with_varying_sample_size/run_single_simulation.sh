#!/usr/bin/env bash

rscript_dir="jhpce-script-examples/simulation_study_with_varying_sample_size"
rscript_log_file_name="${HOME}/simulation_log/${job_name}_rscript_log.txt"
mkdir -p "${HOME}/simulation_result" # Make a directory if non-existent
touch "$rscript_log_file_name" # Create the file if non-existent
module load conda_R
echo "Starting ${job_name}..."
Rscript "${rscript_dir}/run_${method_type}_method_on_simulated_data.R" $sample_size &> $rscript_log_file_name
