import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure RhoGtpaseSignalingPackage where
  cdc42Activation : Prop
  racActivation : Prop
  rhoActivation : Prop
  crossRegulation : Prop

structure RhoGtpaseSignalingEvidence (P : RhoGtpaseSignalingPackage) where
  cdc42ActivationClosed : P.cdc42Activation
  racActivationClosed : P.racActivation
  rhoActivationClosed : P.rhoActivation
  crossRegulationClosed : P.crossRegulation

def RhoGtpaseSignalingClosed (P : RhoGtpaseSignalingPackage) : Prop :=
  P.cdc42Activation ∧ P.racActivation ∧ P.rhoActivation ∧ P.crossRegulation

theorem rho_gtpase_signaling_closed_from_evidence (P : RhoGtpaseSignalingPackage) (E : RhoGtpaseSignalingEvidence P) :
    RhoGtpaseSignalingClosed P := by
  exact And.intro E.cdc42ActivationClosed
    (And.intro E.racActivationClosed
      (And.intro E.rhoActivationClosed E.crossRegulationClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse