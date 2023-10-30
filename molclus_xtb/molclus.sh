#!/bin/bash
#SBATCH -p G1Part_sce
#SBATCH -N 1
#SBATCH -n 20
export PATH=$PATH:/es01/paratera/sce1484/xtb/xtb-6.6.0/bin
export XTBPATH=/es01/paratera/sce1484/xtb/xtb-6.6.0/share/xtb
export OMP_NUM_THREADS=56
export MKL_NUM_THREADS=56
export OMP_STACKSIZE=1000m
ulimit -s unlimited
chmod +x ./molclus
./molclus
