#include "cppdefs.h"
      MODULE dispersion_wr_inw_mod
#if defined INWAVE_MODEL
!
!svn $Id: dispersion_inw.F 732 2008-09-07 01:55:51Z jcwarner $

!======================================================================!
!                                                                      !
!  This routine computes the wave number from the linear dispersion    !
!                                                                      !
!======================================================================!
!
      implicit none

      PRIVATE
      PUBLIC  :: dispersion_wr_inw

      CONTAINS
!
!***********************************************************************
      SUBROUTINE dispersion_wr_inw (ng, tile)
!***********************************************************************
!
      USE mod_coupling
      USE mod_param
      USE mod_grid
      USE mod_ocean
      USE mod_stepping
      USE mod_inwave_vars
      USE mod_inwave_params
      USE mod_inwave_bound
!
!  Imported variable declarations.
!
      integer, intent(in) :: ng, tile
!
!  Local variable declarations.
!
# include "tile.h"
!
!# ifdef PROFILE
!      CALL wclock_on (ng, iNLM, 35)
!# endif

      CALL dispersion_wr_inw_tile(ng, tile,                             &
     &                            LBi, UBi, LBj, UBj,                   &
     &                            nrhs(ng), nstp(ng), nnew(ng),         &
# ifdef MASKING
     &                            GRID(ng) % rmask,                     &
# endif
     &                            GRID(ng) % h,                         &
     &                            COUPLING(ng)%Zt_avg1 ,                &
     &                            WAVEP(ng) % kwc,                      &
     &                            WAVEP(ng) % Tr,                       &
     &                            WAVEP(ng) % h_tot)
!# ifdef PROFILE
!      CALL wclock_off (ng, iNLM, 35)
!# endif
      RETURN
      END SUBROUTINE dispersion_wr_inw
!
!***********************************************************************
      SUBROUTINE dispersion_wr_inw_tile(ng, tile,                       &
     &                                  LBi, UBi, LBj, UBj,             &
     &                                  nrhs, nstp, nnew,               &
# ifdef MASKING
     &                                  rmask,                          &
# endif
     &                                  h, zeta,                        &
     &                                  kwc, Tr,                        &
     &                                  h_tot)
!***********************************************************************
!
      USE mod_param
      USE mod_scalars
      USE mod_inwave_params
      USE Tr3dbc_mod
      USE exchange_3d_mod
      USE exchange_2d_mod

# ifdef DISTRIBUTE
      USE mp_exchange_mod
# endif

      USE bc_2d_mod
      USE bc_3d_mod
!
!  Imported variable declarations.
!
      integer, intent(in) :: ng, tile
      integer, intent(in) :: LBi, UBi, LBj, UBj
      integer, intent(in) :: nrhs, nstp, nnew

# ifdef ASSUMED_SHAPE
#  ifdef MASKING
      real(r8), intent(in) :: rmask(LBi:,LBj:)
#  endif
      real(r8), intent(in) :: h(LBi:,LBj:)
      real(r8), intent(in) :: zeta(LBi:,LBj:)
      real(r8), intent(in) :: kwc(LBi:,LBj:,:)
      real(r8), intent(inout) :: Tr(LBi:,LBj:,:)
      real(r8), intent(inout) :: h_tot(LBi:,LBj:)
# else
#  ifdef MASKING
      real(r8), intent(in) :: rmask(LBi:UBi,LBj:UBj)
#  endif
      real(r8), intent(in) :: h(LBi:,LBj:)
      real(r8), intent(in) :: zeta(LBi:UBi,LBj:UBj)
      real(r8), intent(in) :: kwc(LBi:UBi,LBj:UBj,ND)
      real(r8), intent(inout) :: Tr(LBi:UBi,LBj:UBj,ND)
      real(r8), intent(inout) :: h_tot(LBi:UBi,LBj:UBj)
# endif
!
!  Local variable declarations.
!
      integer :: i, is, itrc, j, k, d
      integer :: Isup, Iinf, Jsup, Jinf

      real(r8) :: twopi
      real(r8) :: error
      real(r8) :: L0, k0, k1, tkh, kh, kx, ky, wr
      real(r8) :: F, FDER
      real(r8) :: cff, cff1, cff2
      real(r8) :: tanhkh, sinhtkh, o2aa, Vcur, cosde, sinde
      real(r8), parameter :: maxErr = 0.1_r8
      real(r8), parameter :: Trmin = 1.0_r8
      real(r8), parameter :: Trmax=5000.0_r8

# include "set_bounds.h"
!
      twopi=2.0_r8*pi
!
!======================================================================!
!           Compute the total water depth at rho points                !
!======================================================================!
!
      DO j=Jstr,Jend
        DO i=Istr,Iend
          h_tot(i,j)=(h(i,j)+zeta(i,j))
# ifdef MASKING
          h_tot(i,j)=h_tot(i,j)*rmask(i,j)
# endif
        END DO
      END DO
!
!======================================================================!
!       Compute the relative frequency from the linear dispersion      !
!======================================================================!
!
      DO d=1,ND
        DO j=Jstr,Jend
          DO i=Istr,Iend
            IF(h_tot(i,j).ge.Dcrit(ng))THEN
              wr=sqrt(g*kwc(i,j,d)*tanh(kwc(i,j,d)*h_tot(i,j)))
              Tr(i,j,d)=MAX(twopi/wr,Trmin)
              Tr(i,j,d)=MIN(Tr(i,j,d),Trmax)
            ELSE
              Tr(i,j,d)=Trmin
            ENDIF
          END DO
        END DO
      END DO

      CALL Tr3dbc_tile (ng, tile,                                       &
     &                  LBi, UBi, LBj, UBj,                             &
     &                  Tr)
      CALL bc_r2d_tile (ng, tile,                                       &
     &                  LBi, UBi, LBj, UBj,                             &
     &                  h_tot)
!
!  Apply periodic boundary conditions.
!
      IF (EWperiodic(ng).or.NSperiodic(ng)) THEN
        CALL exchange_r3d_tile (ng, tile,                               &
     &                          LBi, UBi, LBj, UBj, 1, ND,              &
     &                          Tr)
        CALL exchange_r2d_tile (ng, tile,                               &
     &                          LBi, UBi, LBj, UBj,                     &
     &                          h_tot)
      END IF

# ifdef DISTRIBUTE
!
!  Exchange boundary data.
!
      CALL mp_exchange3d (ng, tile, iNLM, 1,                            &
     &                    LBi, UBi, LBj, UBj, 1, ND,                    &
     &                    NghostPoints,                                 &
     &                    EWperiodic(ng), NSperiodic(ng),               &
     &                    Tr)
      CALL mp_exchange2d (ng, tile, iNLM, 1,                            &
     &                    LBi, UBi, LBj, UBj,                           &
     &                    NghostPoints,                                 &
     &                    EWperiodic(ng), NSperiodic(ng),               &
     &                    h_tot)
# endif

      RETURN
      END SUBROUTINE dispersion_wr_inw_tile
#endif
      END MODULE dispersion_wr_inw_mod

