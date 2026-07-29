import CellBiologyCellMigrationLemmaCanonicalLaneLean.CellMigrationPDE

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure PrimitiveCellEnvironment where
  Point : Type
  ExtracellularMatrix : Type
  adhesionSites : Type
  matrixComposition : Prop
  stiffnessGradient : Prop
  ligandDensity : Prop

structure PrimitiveCellMigratoryPhenotype where
  cellType : String
  polarization : Prop
  protrusionActivity : Prop
  contractionForce : Prop
  adhesionDynamics : Prop

structure PrimitiveCellMigrationProcess
    {C : ChemotaxisModelPackage} (PDE : CellMigrationPDEPackage C) where
  environment : PrimitiveCellEnvironment
  phenotype : PrimitiveCellMigratoryPhenotype
  migrationTrajectory : Type
  persistenceOfDirection : Prop
  chemotacticIndex : Prop
  motilityCoefficient : Prop

def PrimitiveCellMigrationProcess.toFoundational
    {C : ChemotaxisModelPackage} {PDE : CellMigrationPDEPackage C}
    (P : PrimitiveCellMigrationProcess PDE) : CellMigrationFoundationalInhabitants := 
  { chemotaxisModelClosed := C.chemotaxisModelClosed
    cellMigrationPDEClosed := cell_migration_pde_closed_from_evidence PDE (by
      -- evidence would be constructed from P fields
      sorry)
    migrationTrajectory := P.migrationTrajectory
    persistenceOfDirection := P.persistenceOfDirection
    chemotacticIndex := P.chemotacticIndex
    motilityCoefficient := P.motilityCoefficient }

end HautevilleHouse
end CellBiologyCellMigrationLemmaCanonicalLaneLean