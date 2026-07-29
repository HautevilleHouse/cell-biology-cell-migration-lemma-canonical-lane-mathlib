import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellPolarizationPackage where
  frontMarkers : Set String
  backMarkers : Set String
  polarityStrength : ℝ
  actinDistributionAsymmetry : ℝ
  adhesionDistributionAsymmetry : ℝ
  frontMarkersNonempty : frontMarkers.Nonempty
  backMarkersNonempty : backMarkers.Nonempty

structure CellPolarizationEvidence (P : CellPolarizationPackage) where
  polarityStrengthClosed : P.polarityStrength ≥ 0
  actinDistributionAsymmetryClosed : P.actinDistributionAsymmetry ≥ 0
  adhesionDistributionAsymmetryClosed : P.adhesionDistributionAsymmetry ≥ 0
  frontBackDistinct : P.frontMarkers ∩ P.backMarkers = ∅

def CellPolarizationClosed (P : CellPolarizationPackage) : Prop :=
  P.polarityStrength ≥ 0 ∧
  P.actinDistributionAsymmetry ≥ 0 ∧
  P.adhesionDistributionAsymmetry ≥ 0 ∧
  P.frontMarkers ∩ P.backMarkers = ∅

theorem cell_polarization_closed_from_evidence (P : CellPolarizationPackage) (E : CellPolarizationEvidence P) :
    CellPolarizationClosed P := by
  exact And.intro E.polarityStrengthClosed
    (And.intro E.actinDistributionAsymmetryClosed
      (And.intro E.adhesionDistributionAsymmetryClosed E.frontBackDistinct))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
