#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
cd $SGE_O_WORKDIR
./ggeom in > temp
