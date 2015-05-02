#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -pe orte 1

cd $SGE_O_WORKDIR
./ggeom in > temp
