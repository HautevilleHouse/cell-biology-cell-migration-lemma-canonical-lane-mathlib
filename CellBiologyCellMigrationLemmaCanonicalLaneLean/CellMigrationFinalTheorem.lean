import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

def ConstrainedCellMigrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_migration_endgame (A : AdmissibleClass) :
    ConstrainedCellMigrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
