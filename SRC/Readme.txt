2014/6/27

dqmc_phy0.F90PAM_KE_cf:
for NMR Knight shift anomaly project, namely only include the kinetic energy associated with c-f hybridization

dqmc_phy0.F90print1:
Add phy0_print1 subroutine into dqmc_phy0.F90PAM_KE_cf for seperate output,
similar to Add two subroutines DQMC_TDM1_Print1 and DQMC_TDM1_Chi_Print into
dqmc_tdm1.F90nocond

dqmc_util.F90MJ:
Add two subroutines in the interface print: DQMC_Print_RealArrayMJ, DQMC_Print_RealArrayMJ1, which are used in dqmc_tdm1.F90 for seperate output

dqmc_tdm1.F90nocond:
delete the J-J correlation (conductivity) calculation in dqmc_tdm1.F90org

dqmc_tdm1.F90PAM_2D:
Add two subroutines DQMC_TDM1_Print1 and DQMC_TDM1_Chi_Print into dqmc_tdm1.F90nocond. These are for NMR Knight shift anomaly project; dqmc_tdm1.F90PAM_3D is also available in questnew directory


