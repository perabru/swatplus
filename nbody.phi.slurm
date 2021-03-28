#!/bin/bash
#SBATCH --partition=phishort
#SBATCH --time=00:01:00
#SBATCH --ntasks=1
#SBATCH --job-name=nbody
#SBATCH --gres=mic:1

cd $SLURM_SUBMIT_DIR
#### Prepare o ambiente com os devidos módulos #########
#module add libraries/impi/5.0-intel-15.03
#### Exporte as variaveis relevantes para o job ########3
#export MKL_NUM_THREADS=1
export OMP_NUM_THREADS=1
#### Execução do job ####
#mpirun -np $SLURM_NTASKS prime 200000 > teste.out

echo $SLURM_JOB_NODELIST

## Informacoes do job impressos no arquivo de saida.
echo -e "\n## Jobs ativos de $USER: \n"
squeue -a --user=$USER
echo -e "\n## Node de execucao do job:         $(hostname -s) \n"
echo -e "\n## Numero de tarefas para este job: $SLURM_NTASKS \n"


time ./a.out < nbody.in
