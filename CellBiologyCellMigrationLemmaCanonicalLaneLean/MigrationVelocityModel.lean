import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.AtinPolymerizationDynamics
import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.AdhesionDynamics
import HautevilleHouse.CellBiologyCellMigrationLemmaCanonicalLaneLean.ChemotaxisSignaling

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationVelocityPackage {A : ActinPolymerizationPackage} {B : AdhesionPackage} {C : ChemotaxisSignalingPackage} where
  actinContribution : A.actinMonomerConcentration * A.polymerizationForce
  adhesionContribution : B.tractionForceGeneration / B.integrinBindingRate
  signalingModulation : C.downstreamSignalingActivation
  resultingVelocity : ℝ
  velocityEquation : resultingVelocity = actinContribution + adhesionContribution + signalingModulation

structure MigrationVelocityEvidence {A : ActinPolymerizationPackage} {B : AdhesionPackage} {C : ChemotaxisSignalingPackage}
    (M : MigrationVelocityPackage A B C) where
  actinContributionClosed : M.actinContribution ≥ 0
  adhesionContributionClosed : M.adhesionContribution ≥ 0
  signalingModulationClosed : M.signalingModulation ≥ 0
  resultingVelocityClosed : M.resultingVelocity ≥ 0
  velocityEquationClosed : M.velocityEquation

def MigrationVelocityClosed {A : ActinPolymerizationPackage} {B : AdhesionPackage} {C : ChemotaxisSignalingPackage}
    (M : MigrationVelocityPackage A B C) : Prop :=
  M.actinContribution ≥ 0 ∧
  M.adhesionContribution ≥ 0 ∧
  M.signalingModulation ≥ 0 ∧
  M.resultingVelocity ≥ 0 ∧
  M.velocityEquation

theorem migration_velocity_closed_from_evidence {A : ActinPolymerizationPackage} {B : AdhesionPackage} {C : ChemotaxisSignalingPackage}
    (M : MigrationVelocityPackage A B C) (E : MigrationVelocityEvidence M) :
    MigrationVelocityClosed M := by
  exact And.intro E.actinContributionClosed
    (And.intro E.adhesionContributionClosed
      (And.intro E.signalingModulationClosed
        (And.intro E.resultingVelocityClosed E.velocityEquationClosed)))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
