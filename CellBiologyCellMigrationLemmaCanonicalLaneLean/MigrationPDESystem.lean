import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationPDESystem where
  cellConcentration : Type u
  chemotacticGradient : Type v
  diffusionCoefficient : Prop
  reactionTerms : Prop
  pdeSystemValid : Prop

structure MigrationPDESystemEvidence (M : MigrationPDESystem) where
  diffusionCoefficientClosed : M.diffusionCoefficient
  reactionTermsClosed : M.reactionTerms
  pdeSystemValidClosed : M.pdeSystemValid

def MigrationPDESystemClosed (M : MigrationPDESystem) : Prop :=
  M.diffusionCoefficient ∧ M.reactionTerms ∧ M.pdeSystemValid

theorem migration_pde_system_closed_from_evidence (M : MigrationPDESystem)
    (E : MigrationPDESystemEvidence M) : MigrationPDESystemClosed M := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.reactionTermsClosed E.pdeSystemValidClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse