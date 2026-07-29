import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure FocalAdhesionDynamicsPackage where
  integrinBindingUnbinding : Prop
  forceTransmission : Prop
  adhesionTurnoverRate : Prop
  signalingFeedback : Prop
  integrinBindingUnbindingTerm : integrinBindingUnbinding
  forceTransmissionTerm : forceTransmission
  adhesionTurnoverRateTerm : adhesionTurnoverRate
  signalingFeedbackTerm : signalingFeedback

structure FocalAdhesionDynamicsEvidence (F : FocalAdhesionDynamicsPackage) where
  integrinBindingUnbindingClosed : F.integrinBindingUnbinding
  forceTransmissionClosed : F.forceTransmission
  adhesionTurnoverRateClosed : F.adhesionTurnoverRate
  signalingFeedbackClosed : F.signalingFeedback

def FocalAdhesionDynamicsClosed (F : FocalAdhesionDynamicsPackage) : Prop :=
  F.integrinBindingUnbinding ∧ F.forceTransmission ∧ F.adhesionTurnoverRate ∧ F.signalingFeedback

theorem focal_adhesion_dynamics_closed_from_evidence (F : FocalAdhesionDynamicsPackage) (E : FocalAdhesionDynamicsEvidence F) :
    FocalAdhesionDynamicsClosed F := by
  exact And.intro E.integrinBindingUnbindingClosed
    (And.intro E.forceTransmissionClosed
      (And.intro E.adhesionTurnoverRateClosed E.signalingFeedbackClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
