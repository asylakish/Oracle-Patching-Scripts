#!/bin/bash

# Limit of jobs running at the same time
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_3
parallel_limit=3

# Getting filenames from command line arguments
parameters_file=$1
script_file=$2

# Reading parameters from a file
while read parameter; do
    while [ $(jobs | wc -l) -ge $parallel_limit ]; do
        sleep 1
    done
export parameter=$parameter
    bash "$script_file" "$parameter" &
done < "$parameters_file"

# Waiting for all processes to end
wait
