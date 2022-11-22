# COAWST incorporating drag model for Rhizophora mangroves

This is a modified code of the **COAWST** for simulating flow and sediment transport in Rhizophora mangrove forests.  
The code was bulit on the one from <https://github.com/NakamuraTakashi/COAWST_Eco> by Dr. Takashi Nakamura who made some modifications to the original code.  

The directory "Data" contains input files, and "Projects" contains run scripts for following simulations used in a manuscript "Representing the impact of Rhizophora mangroves on flow and sediment transport in a hydrodynamic model: importance of three-dimensional root system structures" by M. Yoshikai et al.

Mangrove_bak_exp: simulations for flows in Bakhawan Ecopark using Rh-model (ocean_mangrove_bak_exp_grd_v2.0.in), sparse cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case2.in), dense cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case3.in), and no vegetation (ocean_mangrove_bak_exp_grd_v2.0_noveg.in).
Mangrove_bak_exp_actual: simulations for flows in Bakhawan Ecopark using Rh-model using measured root projected area (ocean_mangrove_bak_exp_grd_v2.0.in).
Mangrove_bak_exp_sed_disc: simulations for sediment transport in Bakhawan Ecopark using Rh-model (ocean_mangrove_bak_exp_grd_v2.0_expXX.in), sparse cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case2_expXX.in), dense cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case3_expXX.in), and no vegetation (ocean_mangrove_bak_exp_grd_v2.0_noveg_expXX.in).
Mangrove_maza_exp: simulations for flows in a model mangrove forest examined in Maza et al. (2017).
