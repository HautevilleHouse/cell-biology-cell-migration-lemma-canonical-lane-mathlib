import ForceGeneration

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationPhenotypePackage where
  mesenchymalMotor : Prop
  amoeboidSwitch : Prop
  collectiveCoordination : Prop

structure MigrationPhenotypeEvidence (M : MigrationPhenotypePackage) where
  mesenchymalMotorClosed : M.mesenchymalMotor
  amoeboidSwitchClosed : M.amoeboidSwitch
  collectiveCoordinationClosed : M.collectiveCoordination

def MigrationPhenotypeClosed (M : MigrationPhenotypePackage) : Prop :=
  M.mesenchymalMotor ∧ M.amoeboidSwitch ∧ M.collectiveCoordination

theorem migration_phenotype_closed_from_evidence (M : MigrationPhenotypePackage) (E : MigrationPhenotypeEvidence M) :
    MigrationPhenotypeClosed M := by
  exact And.intro E.mesenchymalMotorClosed (And.intro E.amoeboidSwitchClosed E.collectiveCoordinationClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse