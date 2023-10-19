# COAWST incorporating drag model for Rhizophora mangroves

This is a modified code of the **COAWST** for simulating flow in Rhizophora mangrove forests.

The model is described in:
Yoshikai, M., Nakamura, T., Herrera, E. C., Suwa, R., Rollon, R., Ray, R., Furukawa, K., and Nadaoka, K.: Representing the impact of Rhizophora mangroves on flow in a hydrodynamic model (COAWST_rh v1.0): the importance of three-dimensional root system structures, Geosci. Model Dev., 16, 5847–5863, https://doi.org/10.5194/gmd-16-5847-2023, 2023.

The directory "Data" contains input files, and "Projects" contains run scripts for the following simulations used in the above paper.

The code was bulit on the one from <https://github.com/NakamuraTakashi/COAWST_Eco> by Dr. Takashi Nakamura who made some modifications to the original code.  

## Mangrove_bak_exp

simulations for flows in Bakhawan Ecopark using 
* Rh-model (ocean_mangrove_bak_exp_grd_v2.0.in)
* sparse cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case2.in)
* dense cylinder model (ocean_mangrove_bak_exp_grd_v2.0_cylinder_case3.in)
* increased bed roughness (ocean_mangrove_bak_exp_grd_v2.0_noveg_Nz3_bed_drag.in)
* no vegetation (ocean_mangrove_bak_exp_grd_v2.0_noveg.in)

## Mangrove_bak_exp_actual

simulations for flows in Bakhawan Ecopark using
* Rh-model using measured root projected area (ocean_mangrove_bak_exp_grd_v2.0.in)

## Mangrove_bak_exp_xie

simulation for flows in Bakhawan Ecopark using
* A cylinder-array root model used in Xie et al. (2020)

## Mangrove_maza_exp
simulations for flows in a model mangrove forest examined in Maza et al. (2017) using
* Rh-model (ocean_mangrove_maza_expX.in)
* cylinder model (ocean_mangrove_maza_cylinder_expX.in)

## Mangrove_maza_exp_length_root
simulations for flows in a model mangrove forest examined in Maza et al. (2017) using a root diameter for the vegetation-generated turbulence length-scale
* Rh-model (ocean_mangrove_maza_expX.in)

## Mangrove_maza_exp_length_stem
simulations for flows in a model mangrove forest examined in Maza et al. (2017) using a stem diameter for the vegetation-generated turbulence length-scale
* Rh-model (ocean_mangrove_maza_expX.in)
