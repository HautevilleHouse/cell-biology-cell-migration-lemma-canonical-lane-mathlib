import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationAdmittedObject where
  cellType : Type
  migrationPath : cellType → Prop
  adhesionDynamics : Prop
  cytoskeletalRemodeling : Prop
  conclusion : adhesionDynamics ∧ cytoskeletalRemodeling

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse