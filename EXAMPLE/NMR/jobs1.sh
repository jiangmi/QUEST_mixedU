#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -pe orte 1
#cd $SGE_O_WORKDIR

# Initialization

EXECFILE="ggeom"                             # Exec file
#PARAMLIST=" "                                      # Execution parameters
IFILELIST="$EXECFILE"        # List of input files
#OFILELIST=" *.out"

# Copying the necessary files to the scratch folder
#for dec in `seq 1 1 60`
#do 
#   cp ./$EXECFILE heisenberg3D.in /home/jiang/Langevin/job$dec
#done

#input_file="PAMgeom"

#old_V=`grep "0 1   0.0 0.0 1.0" $input_file`

#for V in `seq 0.1 0.1 2.0`
#for T in `seq 1 1 5`
#Vs="9 14 18 19 21 22 25 32 33 41 43"
for V in `seq 1 1 20`
#for V in $Vs
do
#     for i in $IFILELIST
#        do
#          cp $i /home/jiang/questnew/EXAMPLE/NMR$V
#      done

   #   cd /home/jiang/questnew/EXAMPLE/NMR
#      cp nmr.sh /home/mijiang/quest-qmc/EXAMPLE/NMR$V
#      cp nmr.sh /home/mijiang/quest-qmc/EXAMPLE/NMR$V/nmr$V".sh"
      cd /home/mijiang/quest-qmc/EXAMPLE/NMR$V
      make
      qsub nmr$V".sh"
      cd /home/mijiang/quest-qmc/EXAMPLE/NMR
done

