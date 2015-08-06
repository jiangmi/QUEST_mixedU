#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -pe orte 1
#cd $SGE_O_WORKDIR

# Initialization
EXECFILE="ggeom"                             # Exec file
#PARAMLIST=" "                                      # Execution parameters
IFILELIST="./$EXECFILE PAMgeom Makefile ggeom.F90 in"        # List of input files
#OFILELIST=" *.out"                                 # List of output files

input_file="PAMgeom"

#iold_V=`grep "0 1   0.0 0.0 1.0" $input_file`

#Vs="0.5 0.75 1.0 1.4 1.6 1.8 2.0"

for n in `seq 1 1 40`
do
      mkdir -p /home/mijiang/quest-qmc/EXAMPLE/NMR$n
      for i in $IFILELIST
        do
          cp /home/mijiang/quest-qmc/EXAMPLE/NMR/$i /home/mijiang/quest-qmc/EXAMPLE/NMR$n
      done
      cp /home/mijiang/questnew/EXAMPLE/NMR$n/PAMgeom /home/mijiang/quest-qmc/EXAMPLE/NMR$n/PAMgeom
      cp /home/mijiang/questnew/EXAMPLE/NMR$n/input /home/mijiang/quest-qmc/EXAMPLE/NMR$n/in
      cp /home/mijiang/questnew/EXAMPLE/NMR$n/nmr$n".sh" /home/mijiang/quest-qmc/EXAMPLE/NMR$n/nmr$n".sh"
      
      cd /home/mijiang/quest-qmc/EXAMPLE/NMR$n
      make
      qsub nmr$n".sh"
      cd /home/mijiang/quest-qmc/EXAMPLE/NMR
     
done
