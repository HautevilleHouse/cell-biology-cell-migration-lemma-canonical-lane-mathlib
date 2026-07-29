import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.ChemotaxisGradient

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ActinDynamicsPackage (C : ChemotaxisGradientPackage) where
  polymerizationRate : Prop
  nucleationCores : Prop
  branchingDensity : Prop
  retrogradeFlow : Prop

structure ActinDynamicsEvidence {C : ChemotaxisGradientPackage} (A : ActinDynamicsPackage C) where
  polymerizationRateClosed : A.polymerizationRate
  nucleationCoresClosed : A.nucleationCores
  branchingDensityClosed : A.branchingDensity
  retrogradeFlowClosed : A.retrogradeFlow

def ActinDynamicsClosed {C : ChemotaxisGradientPackage} (A : ActinDynamicsPackage C) : Prop :=
  A.polymerizationRate ∧ A.nucleationCores ∧ A.branchingDensity ∧ A.retrogradeFlow

theorem actin_dynamics_closed_from_evidence {C : ChemotaxisGradientPackage}
    (A : ActinDynamicsPackage C) (E : ActinDynamicsEvidence A) : ActinDynamicsClosed A := by
  exact And.intro E.polymerizationRateClosed
    (And.intro E.nucleationCoresClosed
      (And.intro E.branchingDensityClosed E.retrogradeFlowClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse