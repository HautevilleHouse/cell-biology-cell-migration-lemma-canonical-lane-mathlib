import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure CellMigrationObject where
  cellType : Type
  extracellularMatrix : Type
  integrinSignaling : Prop
  adhesionComplexFormed : Prop
  actinPolymerization : Prop
  lamellipodiumExtended : Prop
  migrationDirection : Prop
  conclusion : adhesionComplexFormed ∧ actinPolymerization ∧ lamellipodiumExtended

structure AdmissibleClass where
  object : CellMigrationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellMigrationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CellMigrationWitnessClosed (O : CellMigrationObject) : Prop :=
  O.adhesionComplexFormed ∧ O.actinPolymerization ∧ O.lamellipodiumExtended

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse