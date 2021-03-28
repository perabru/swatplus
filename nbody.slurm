#!/bin/bash
#SBATCH --partition=cputiny
#SBATCH --time=00:01:00
#SBATCH --ntasks=28
#SBATCH --job-name=nbody
#SBATCH --exclusive
cd $SLURM_SUBMIT_DIR
#### Prepare o ambiente com os devidos módulos #########
#module add libraries/impi/5.0-intel-15.03
#### Exporte as variaveis relevantes para o job ########3
#export MKL_NUM_THREADS=1
export OMP_NUM_THREADS=28
#### Execução do job ####
#mpirun -np $SLURM_NTASKS prime 200000 > teste.out

echo $SLURM_JOB_NODELIST

time ./nbody.x < nbody.in
