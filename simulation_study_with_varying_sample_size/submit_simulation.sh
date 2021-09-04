node_name='shared.q@compute-*'
mem_gb_free=1
n_core=2

for sample_size in 1000 4000 16000; do
  for method_type in 'old' 'new'; do
    job_name="${method_type}_method_simulation_with_${sample_size}_observations"
    log_file_name="${HOME}/${job_name}_qsub_log.txt"
    echo "Starting ${job_name}..."
    qsub \
      -q "${node_name}" `# If you need a specific node` \
      -l mem_free="${mem_gb_free}G",h_vmem="${mem_gb_free}G" `# Specify memory requirement` \
      -pe local $n_core `# Parallel environment for multi-threading` \
      -N $job_name `# Give a human-readable name to the submitted job so that you can find it later` \
      -o $log_file_name `# Direct output messages` \
      -e $log_file_name `# Direct errors` \
      -m e -M your.email@jh.edu `# Send an email when the job completes or aborts` \
      -v method_type=${method_type},sample_size=${sample_size},job_name=${job_name} `# Assign variables to be passed to the bash script` \
      run_single_simulation.sh
  done
done
