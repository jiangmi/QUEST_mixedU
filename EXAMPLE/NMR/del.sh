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
#Vs="0.5 0.75 1.0 1.2 1.4 1.6 1.8 2.0"
for V in `seq 78616 1 78629`
do
#     for i in $IFILELIST
#        do
#          cp $i /home/jiang/questnew/EXAMPLE/NMR$V
#      done

      qdel $V
     
done

