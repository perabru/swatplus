#!/bin/bash
#SBATCH --partition=cputiny
#SBATCH --exclusive
#SBATCH --time=00:01:00
#SBATCH --ntasks=1
#SBATCH --job-name=teste

cd $SLURM_SUBMIT_DIR
#### Prepare o ambiente com os devidos módulos #########
####module add libraries/impi/5.0-intel-15.03
#### Exporte as variaveis relevantes para o job ########3
####export MKL_NUM_THREADS=1
#### Execução do job ####
#mpirun -np $SLURM_NTASKS prime 200000 > teste.out

echo $SLURM_JOB_NODELIST

if [ -n "$SLURM_CPUS_PER_TASK" ]; then
        omp_threads=$SLURM_CPUS_PER_TASK
else
        omp_threads=1
fi
export OMP_NUM_THREADS=$omp_threads


time ./teste.x
