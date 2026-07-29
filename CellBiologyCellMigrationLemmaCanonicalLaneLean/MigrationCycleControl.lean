import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationCycleControlPackage where
  protrusionFormation : Prop
  adhesionMaturation : Prop
  cellBodyTranslocation : Prop
  rearRetraction : Prop

structure MigrationCycleControlEvidence (P : MigrationCycleControlPackage) where
  protrusionFormationClosed : P.protrusionFormation
  adhesionMaturationClosed : P.adhesionMaturation
  cellBodyTranslocationClosed : P.cellBodyTranslocation
  rearRetractionClosed : P.rearRetraction

def MigrationCycleControlClosed (P : MigrationCycleControlPackage) : Prop :=
  P.protrusionFormation ∧ P.adhesionMaturation ∧ P.cellBodyTranslocation ∧ P.rearRetraction

theorem migration_cycle_control_closed_from_evidence (P : MigrationCycleControlPackage) (E : MigrationCycleControlEvidence P) :
    MigrationCycleControlClosed P := by
  exact And.intro E.protrusionFormationClosed
    (And.intro E.adhesionMaturationClosed
      (And.intro E.cellBodyTranslocationClosed E.rearRetractionClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse