#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -pe orte 1
#cd $SGE_O_WORKDIR

# Copying output files to the scratch folder

for n in `seq 1 1 20`
#for n in `seq 45 -1 26`
#Ts="0.4"
#Ts="0.7 1.0 1.8 1.9 2.4"
#for T in $Ts
do
  #  cp /home/mijiang/quest-qmc/EXAMPLE/NMR$n/PAMgeom.out out$n
    cd /home/mijiang/quest-qmc/EXAMPLE/NMR$n
#    cat results 
#    echo `grep "L      =" in`
#    echo `grep "dtau   =" in`
#  echo `grep "beta :" PAMgeom.out`
#   echo `grep "beta (dtau*L) : " out$n`
    echo `grep "Kinetic energy :" PAMgeom.out`
done
