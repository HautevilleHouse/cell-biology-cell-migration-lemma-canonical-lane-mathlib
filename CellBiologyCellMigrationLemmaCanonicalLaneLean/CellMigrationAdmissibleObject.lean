import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellMigrationAdmittedObject where
  space : CellMigrationSpace
  threeDimensionalEnvironment : Prop
  cellAdhesionEnabled : Prop
  migrationPathExists : Prop
  conclusion : migrationPathExists

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.migrationPathExists

end HautevilleHouse
end CellBiologyCellMigrationLemmaCanonicalLaneLean