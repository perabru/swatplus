#!/bin/bash
#SBATCH --partition=cpushort

######SBATCH --partition=gpushort


#SBATCH --exclusive
#SBATCH --time=00:30:00
#SBATCH --ntasks=1
#SBATCH --job-name=swat

#####SBATCH --gres=gpu:k80:1

cd $SLURM_SUBMIT_DIR
#### Prepare o ambiente com os devidos módulos #########
####module add libraries/impi/5.0-intel-15.03
#### Exporte as variaveis relevantes para o job ########3
####export MKL_NUM_THREADS=1
#### Execução do job ####
#mpirun -np $SLURM_NTASKS prime 200000 > teste.out

echo $SLURM_JOB_NODELIST

time ./swatplus
