import CellBiologyCellMigrationLemmaCanonicalLaneLean.ChemotaxisModel

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationPDEPackage (C : ChemotaxisModelPackage) where
  timeParameter : Type u
  cellDensityAt : timeParameter → Type v
  initialDensityMatches : Prop
  densityEvolutionEquation : Prop
  chemotacticSensitivity : Prop
  diffusionCoefficient : Prop

structure CellMigrationPDEEvidence {C : ChemotaxisModelPackage} (F : CellMigrationPDEPackage C) where
  initialDensityMatchesClosed : F.initialDensityMatches
  densityEvolutionEquationClosed : F.densityEvolutionEquation
  chemotacticSensitivityClosed : F.chemotacticSensitivity
  diffusionCoefficientClosed : F.diffusionCoefficient

def CellMigrationPDEClosed {C : ChemotaxisModelPackage} (F : CellMigrationPDEPackage C) : Prop :=
  F.initialDensityMatches ∧ F.densityEvolutionEquation ∧ F.chemotacticSensitivity ∧ F.diffusionCoefficient

theorem cell_migration_pde_closed_from_evidence
    {C : ChemotaxisModelPackage} (F : CellMigrationPDEPackage C) (E : CellMigrationPDEEvidence F) :
    CellMigrationPDEClosed F := by
  exact And.intro E.initialDensityMatchesClosed
    (And.intro E.densityEvolutionEquationClosed
      (And.intro E.chemotacticSensitivityClosed E.diffusionCoefficientClosed))

end HautevilleHouse
end CellBiologyCellMigrationLemmaCanonicalLaneLean