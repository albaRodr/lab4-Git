#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno29/P4-Git
#SBATCH -J submit_lab4_pacioli-alumno29.sh
#SBATCH --output=slurm-%j.out
#SBATCH --cpus-per-task=4
#SBATCH --ntasks-per-node=4


export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun -n 4 ./file-cut.sh 2>errores.txt
