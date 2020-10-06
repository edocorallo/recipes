#!/bin/bash
read -e -p "Please enter path to logfile directory (starting from this very directory):" -r log_path
echo "Setting SINGULARITY_BINDPATH in .bashrc ..."
echo 'export SINGULARITY_BINDPATH="'$log_path':/container/logfiles/,container/drain3/results/:/container/drain3/parser/results/,container/DeepLog/model/:/container/DeepLog_no_tensorboard/model/"'>> ../.bashrc
echo "Setting up directories for binding ..."
mkdir container
mkdir container/drain3
mkdir container/drain3/results
mkdir container/drain3/results/frontend-server
mkdir container/drain3/results/backend-server
mkdir container/DeepLog
mkdir container/DeepLog/model
echo "Done."
