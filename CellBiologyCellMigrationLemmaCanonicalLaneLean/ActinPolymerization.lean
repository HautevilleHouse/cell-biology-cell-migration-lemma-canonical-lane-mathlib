import canonicalLaneMathlib.AdmissibleClass

/-!
# Actin Polymerization Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ActinPolymerizationPackage where
  polymerizationRate : Prop
  retrogradeFlow : Prop
  lamellipodiumProtrusion : Prop
  branchingNucleation : Prop

structure ActinPolymerizationEvidence (A : ActinPolymerizationPackage) where
  polymerizationRateClosed : A.polymerizationRate
  retrogradeFlowClosed : A.retrogradeFlow
  lamellipodiumProtrusionClosed : A.lamellipodiumProtrusion
  branchingNucleationClosed : A.branchingNucleation

def ActinPolymerizationClosed (A : ActinPolymerizationPackage) : Prop :=
  A.polymerizationRate ∧ A.retrogradeFlow ∧ A.lamellipodiumProtrusion ∧ A.branchingNucleation

theorem actin_polymerization_closed_from_evidence
    (A : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence A) :
    ActinPolymerizationClosed A := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.retrogradeFlowClosed
      (And.intro E.lamellipodiumProtrusionClosed E.branchingNucleationClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse