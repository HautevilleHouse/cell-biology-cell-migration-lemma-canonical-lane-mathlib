import CellBiologyCellMigrationLemmaCanonicalLaneLean.FocalAdhesionPackage
import CellBiologyCellMigrationLemmaCanonicalLaneLean.LamellipodiaExtensionPackage

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellMigrationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCellMigrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_migration_endgame (A : AdmissibleClass) :
    ConstrainedCellMigrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse