import ChemotaxisGradient

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ForceGenerationPackage where
  actomyosinContraction : Prop
  tractionForces : Prop
  substrateStiffness : Prop

structure ForceGenerationEvidence (F : ForceGenerationPackage) where
  actomyosinContractionClosed : F.actomyosinContraction
  tractionForcesClosed : F.tractionForces
  substrateStiffnessClosed : F.substrateStiffness

def ForceGenerationClosed (F : ForceGenerationPackage) : Prop :=
  F.actomyosinContraction ∧ F.tractionForces ∧ F.substrateStiffness

theorem force_generation_closed_from_evidence (F : ForceGenerationPackage) (E : ForceGenerationEvidence F) :
    ForceGenerationClosed F := by
  exact And.intro E.actomyosinContractionClosed (And.intro E.tractionForcesClosed E.substrateStiffnessClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse