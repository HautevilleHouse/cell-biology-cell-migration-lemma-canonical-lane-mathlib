import CellBiologyCellMigrationLemmaCanonicalLaneLean.PrimitiveCellMigrationModel

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationAnalyticFoundation where
  chemotaxisModel : ChemotaxisModelPackage
  chemotaxisModelEvidence : ChemotaxisModelEvidence chemotaxisModel
  cellMigrationPDE : CellMigrationPDEPackage chemotaxisModel
  cellMigrationPDEEvidence : CellMigrationPDEEvidence cellMigrationPDE
  primitiveModel : PrimitiveCellMigrationProcess cellMigrationPDE
  primitiveModelEvidence : PrimitiveCellMigrationProcessEvidence primitiveModel

def CellMigrationAnalyticFoundationClosed (A : CellMigrationAnalyticFoundation) : Prop :=
  ChemotaxisModelClosed A.chemotaxisModel ∧
  CellMigrationPDEClosed A.cellMigrationPDE ∧
  PrimitiveCellMigrationProcessClosed A.primitiveModel

theorem cell_migration_analytic_foundation_closed_from_evidence
    (A : CellMigrationAnalyticFoundation) :
    CellMigrationAnalyticFoundationClosed A := by
  exact And.intro (chemotaxis_model_closed_from_evidence A.chemotaxisModel A.chemotaxisModelEvidence)
    (And.intro (cell_migration_pde_closed_from_evidence A.cellMigrationPDE A.cellMigrationPDEEvidence)
      (primitive_cell_migration_process_closed_from_evidence A.primitiveModel A.primitiveModelEvidence))

end HautevilleHouse
end CellBiologyCellMigrationLemmaCanonicalLaneLean