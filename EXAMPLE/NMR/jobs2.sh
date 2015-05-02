#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -pe orte 1
#cd $SGE_O_WORKDIR

# Initialization
EXECFILE="ggeom"                             # Exec file
IFILELIST="./$EXECFILE square.geom Makefile ggeom.F90 hole.sh"        # List of input files

input_file="in"
r="dtau   = 0.08"
old=`grep "dtau   = 0.1" $input_file`

for n in `seq 1 1 20`
do
#      mkdir -p /home/mijiang/quest-qmc1/EXAMPLE/holedope$n
#      for i in $IFILELIST
#        do
#          cp /home/mijiang/quest-qmc1/EXAMPLE/holedope/$i /home/mijiang/quest-qmc1/EXAMPLE/holedope$n
#      done
#  cp /home/mijiang/quest-qmc1/EXAMPLE/holedope/ggeom.F90 /home/mijiang/quest-qmc1/EXAMPLE/holedope$n     
      cd /home/mijiang/quest-qmc/EXAMPLE/NMR$n
      sed -i "s/$old/$r/" $input_file
#      make
#      qsub hole$n".sh"
#      cd /home/mijiang/quest-qmc/EXAMPLE/holedope
     
done

#=============================================================
#input_file="in"

#idx = 1

#for mu in `seq 0.00 -0.02 -0.38`
#do
#        r="mu_up  ="
#        old_mu1 = `grep r $input_file`
#        old_mu2 = echo "grep "mu_dn  =" $input_file"
        
#        new_mu1="mu_up = $mu"
#        new_mu2="mu_dn = $mu"

#        sed -i "s/$old_mu1/$new_mu1/" $input_file
#        sed -i "s/$old_mu2/$new_mu2/" $input_file

#        cp $input_file /home/mijiang/quest-qmc1/EXAMPLE/holedope$idx
#        idx = idx + 1
#idone


