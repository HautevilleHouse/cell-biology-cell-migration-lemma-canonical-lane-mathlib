import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ActinPolymerizationPackage where
  actinMonomerConcentration : ℝ
  nucleationRate : ℝ
  elongationRate : ℝ
  cappingRate : ℝ
  branchingRate : ℝ
  polymerizationForce : ℝ

structure ActinPolymerizationEvidence (A : ActinPolymerizationPackage) where
  actinMonomerConcentrationClosed : A.actinMonomerConcentration ≥ 0
  nucleationRateClosed : A.nucleationRate ≥ 0
  elongationRateClosed : A.elongationRate ≥ 0
  cappingRateClosed : A.cappingRate ≥ 0
  branchingRateClosed : A.branchingRate ≥ 0
  polymerizationForceClosed : A.polymerizationForce ≥ 0

def ActinPolymerizationClosed (A : ActinPolymerizationPackage) : Prop :=
  A.actinMonomerConcentration ≥ 0 ∧
  A.nucleationRate ≥ 0 ∧
  A.elongationRate ≥ 0 ∧
  A.cappingRate ≥ 0 ∧
  A.branchingRate ≥ 0 ∧
  A.polymerizationForce ≥ 0

theorem actin_polymerization_closed_from_evidence (A : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence A) :
    ActinPolymerizationClosed A := by
  exact And.intro E.actinMonomerConcentrationClosed
    (And.intro E.nucleationRateClosed
      (And.intro E.elongationRateClosed
        (And.intro E.cappingRateClosed
          (And.intro E.branchingRateClosed E.polymerizationForceClosed))))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
