import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationAdmittedObject where
  cellType : Type
  migrationCondition : Prop
  conclusion : migrationCondition

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.migrationCondition

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse