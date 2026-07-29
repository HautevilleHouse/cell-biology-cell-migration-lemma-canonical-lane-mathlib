import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ChemotaxisSignalingPackage where
  ligandConcentration : ℝ → ℝ
  receptorBindingAffinity : ℝ
  downstreamSignalingActivation : ℝ
  polarizationResponse : ℝ

structure ChemotaxisSignalingEvidence (C : ChemotaxisSignalingPackage) where
  ligandConcentrationNonnegative : ∀ x, C.ligandConcentration x ≥ 0
  receptorBindingAffinityClosed : C.receptorBindingAffinity ≥ 0
  downstreamSignalingActivationClosed : C.downstreamSignalingActivation ≥ 0
  polarizationResponseClosed : C.polarizationResponse ≥ 0

def ChemotaxisSignalingClosed (C : ChemotaxisSignalingPackage) : Prop :=
  (∀ x, C.ligandConcentration x ≥ 0) ∧
  C.receptorBindingAffinity ≥ 0 ∧
  C.downstreamSignalingActivation ≥ 0 ∧
  C.polarizationResponse ≥ 0

theorem chemotaxis_signaling_closed_from_evidence
    (C : ChemotaxisSignalingPackage) (E : ChemotaxisSignalingEvidence C) :
    ChemotaxisSignalingClosed C := by
  refine And.intro E.ligandConcentrationNonnegative
    (And.intro E.receptorBindingAffinityClosed
      (And.intro E.downstreamSignalingActivationClosed E.polarizationResponseClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
