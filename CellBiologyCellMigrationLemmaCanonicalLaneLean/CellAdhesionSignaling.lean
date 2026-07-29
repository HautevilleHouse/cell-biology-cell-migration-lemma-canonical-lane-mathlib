import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellAdhesionSignalingPackage where
  integrinActivation : Prop
  focalAdhesionAssembly : Prop
  forceTransmission : Prop
  signalingCascade : Prop

structure CellAdhesionSignalingEvidence (P : CellAdhesionSignalingPackage) where
  integrinActivationClosed : P.integrinActivation
  focalAdhesionAssemblyClosed : P.focalAdhesionAssembly
  forceTransmissionClosed : P.forceTransmission
  signalingCascadeClosed : P.signalingCascade

def CellAdhesionSignalingClosed (P : CellAdhesionSignalingPackage) : Prop :=
  P.integrinActivation ∧ P.focalAdhesionAssembly ∧ P.forceTransmission ∧ P.signalingCascade

theorem cell_adhesion_signaling_closed_from_evidence (P : CellAdhesionSignalingPackage) (E : CellAdhesionSignalingEvidence P) :
    CellAdhesionSignalingClosed P := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.forceTransmissionClosed E.signalingCascadeClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse