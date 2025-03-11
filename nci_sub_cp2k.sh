#!/bin/bash

#PBS -l walltime=48:00:00
#PBS -l mem=192GB
#PBS -q normal
#PBS -l ncpus=48
#PBS -l software=cp2k/2024.1
#PBS -l storage=gdata/eh83+scratch/eh83
#PBS -l wd
#PBS -P eh83

# Running production steps
module load openmpi/4.1.3
module load cp2k/2024.1

mpirun -np 48 cp2k.psmp cp2k.inp > cp2k.out 2>&1 
