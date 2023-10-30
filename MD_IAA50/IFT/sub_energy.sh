#!/bin/bash
#SBATCH -p amd_256
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 64
source /public3/soft/modules/module.sh
module load mpi/intel/17.0.5-cjj-public3
module load cmake/3.9.0-zyq-public3
module load gcc/10.2.0-public3
export fftw=/public3/home/sc51865/new/install
export PATH=$fftw/bin:$PATH
export LD_LIBRARY_PATH=$fftw/lib:$LD_LIBRARY_PATH
export INCLUDE=$fftw/include:$INCLUDE
export MANSHARE=$fftw/share/man:$MANSHARE
export G=/public3/home/sc51865/new/gromacs-2018.8/gromacs-install
export PATH=$G/bin:$PATH
export LD_LIBRARY_PATH=$G/lib:$LD_LIBRARY_PATH
export INCLUDE=$G/include:$INCLUDE
export MANSHARE=$G/share/man:$MANSHARE
srun gmx energy -f prod.edr -o energy.xvg << EOF
36
40
44
EOF
